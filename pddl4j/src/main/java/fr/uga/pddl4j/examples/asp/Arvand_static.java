package fr.uga.pddl4j.examples.asp;

import fr.uga.pddl4j.heuristics.state.StateHeuristic;
import fr.uga.pddl4j.parser.ParsedProblem;
import fr.uga.pddl4j.plan.Plan;
import fr.uga.pddl4j.plan.SequentialPlan;
import fr.uga.pddl4j.planners.AbstractPlanner;
import fr.uga.pddl4j.problem.ADLProblem;
import fr.uga.pddl4j.problem.State;
import fr.uga.pddl4j.problem.operator.Condition;
import fr.uga.pddl4j.problem.operator.Action;
import fr.uga.pddl4j.problem.operator.ConditionalEffect;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import picocli.CommandLine;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Vector;

/**
 * The class is an example. It shows how to create a simple A* search planner able to
 * <p>
 * solve an ADL problem by choosing the heuristic to used and its weight.
 *
 * @author D. Pellier
 * @version 4.0 - 30.11.2021
 */

@CommandLine.Command(name = "ASP",

        version = "ASP 1.0",

        description = "Solves a specified planning problem using A* search strategy.",

        sortOptions = false,

        mixinStandardHelpOptions = true,

        headerHeading = "Usage:%n",

        synopsisHeading = "%n",

        descriptionHeading = "%nDescription:%n%n",

        parameterListHeading = "%nParameters:%n",

        optionListHeading = "%nOptions:%n")

public class Arvand_static extends AbstractPlanner<ADLProblem> {

    private final int MAX_STEPS = 7;
    /**
     * The class logger.
     */

    private static final Logger LOGGER = LogManager.getLogger(ASP.class.getName());

    /**
     * The weight of the heuristic.
     */
    private double alpha = 0.9;
    private double heuristicWeight;
    private Vector<Double> h = new Vector<>(10, 1);
    // TODO: choose dynamically
    // value
    private static final int NUM_WALK = 2000;
    // TODO: choose dynamically
    private static final int LENGTH_WALK = 10;

    /**
     * The name of the heuristic used by the planner.
     */

    private StateHeuristic.Name heuristic;

    /**
     * Sets the weight of the heuristic.
     *
     * @param weight the weight of the heuristic. The weight must be greater than 0.
     * @throws IllegalArgumentException if the weight is strictly less than 0.
     */

    @CommandLine.Option(names = {"-w", "--weight"}, defaultValue = "1.0",

            paramLabel = "<weight>", description = "Set the weight of the heuristic (preset 1.0).")

    public void setHeuristicWeight(final double weight) {

        if (weight <= 0) {

            throw new IllegalArgumentException("Weight <= 0");

        }

        this.heuristicWeight = weight;

    }

    /**
     * Set the name of heuristic used by the planner to the solve a planning problem.
     *
     * @param heuristic the name of the heuristic.
     */

    @CommandLine.Option(names = {"-e", "--heuristic"}, defaultValue = "FAST_FORWARD",

            description = "Set the heuristic : AJUSTED_SUM, AJUSTED_SUM2, AJUSTED_SUM2M, COMBO, "

                    + "MAX, FAST_FORWARD SET_LEVEL, SUM, SUM_MUTEX (preset: FAST_FORWARD)")

    public void setHeuristic(StateHeuristic.Name heuristic) {

        this.heuristic = heuristic;

    }

    /**
     * Returns the name of the heuristic used by the planner to solve a planning problem.
     *
     * @return the name of the heuristic used by the planner to solve a planning problem.
     */

    public final StateHeuristic.Name getHeuristic() {

        return this.heuristic;

    }


    /**
     * Returns the weight of the heuristic.
     *
     * @return the weight of the heuristic.
     */

    public final double getHeuristicWeight() {

        return this.heuristicWeight;

    }


    /**
     * Instantiates the planning problem from a parsed problem.
     *
     * @param problem the problem to instantiate.
     * @return the instantiated planning problem or null if the problem cannot be instantiated.
     */

    @Override

    public ADLProblem instantiate(ParsedProblem problem) {

        final ADLProblem pb = new ADLProblem(problem);

        pb.instantiate();

        return pb;

    }

    public Plan arvand(final ADLProblem adlProblem) {
        final StateHeuristic instance = StateHeuristic.getInstance(this.getHeuristic(), adlProblem);
        final State state = new State(adlProblem.getInitialState());
        Node pureRandomWalk_dynamic = new Node(state, (Node)null, -1, 0.0, (double)instance.estimate(state, (Condition)adlProblem.getGoal()));
        double heuristic = pureRandomWalk_dynamic.getHeuristic();
        int n = 0;
        while (!pureRandomWalk_dynamic.satisfy((Condition)adlProblem.getGoal())) {
            if (n > 7 || this.deadEnd(pureRandomWalk_dynamic, adlProblem)) {
                pureRandomWalk_dynamic = new Node(state, (Node)null, -1, 0.0, (double)instance.estimate(state, (Condition)adlProblem.getGoal()));
                n = 0;
            }
            pureRandomWalk_dynamic = this.pureRandomWalk_static(pureRandomWalk_dynamic, adlProblem);
            if (instance.estimate((State)pureRandomWalk_dynamic, (Condition)adlProblem.getGoal()) < heuristic) {
                heuristic = instance.estimate((State)pureRandomWalk_dynamic, (Condition)adlProblem.getGoal());
                n = 0;
            }
            else {
                ++n;
            }
        }
        return this.extractPlan(pureRandomWalk_dynamic, adlProblem);
    }

    public ArrayList<Action> ApplicableActions(Node s, ADLProblem problem) {
        ArrayList<Action> list = new ArrayList<>();

        for (int i = 0; i < problem.getActions().size(); i++) {

            // We get the actions of the problem
            Action a = problem.getActions().get(i);

            // If the action is applicable in the current node
            if (a.isApplicable(s)) {
                list.add(a);
            }
        }
        return list;

    }

    /**
     * Find out if the current node gets stuck in a dead end
     *
     * @param current the current node
     * @return true or false
     */
    private boolean deadEnd(Node current, ADLProblem problem) {
        for (int i = 0; i < problem.getActions().size(); i++) {
            Action a = problem.getActions().get(i);
            if (a.isApplicable(current)) {
                return false;
            }
        }
        return true;
    }

    /**
     * Measures the decrease in hmin caused by this walk
     *
     * @param n the number of walks
     * @return the absolute value if any
     */
    private double progress(int n) {
        double h_value = h.get(n - 1) - h.get(n);
        return Math.max(h_value, 0);
    }

    /**
     * Acceptable progress
     *
     * @param n the number of walks
     * @return the acceptable progress
     */
    private double acceptableProgress(int n) {
        double res;
        if (n == 1) {
            res = progress(1);
        } else {
            res = (1 - alpha) * acceptableProgress(n - 1) + alpha * progress(n - 1);
        }
        return res;
    }

/**
     * Pure random walk with dynamic values of random walk length
     * and number of random walks
     *
     * @param current current state
     * @param problem the problem
     * @return the minimum sequence from the current state
     */
    private Node pureRandomWalk_dynamic(Node node, ADLProblem adlProblem) {
        double hmin = Integer.MAX_VALUE;
        this.h.add(hmin);
        int init_len_walk = LENGTH_WALK;
        Node node2 = null;
        final StateHeuristic instance = StateHeuristic.getInstance(this.getHeuristic(), adlProblem);

        for (int i = 1; i < 2000; i++) {
            final Node node3 = new Node((State) node);
            node3.setParent(node.getParent());
            node3.setCost(node.getCost());
            node3.setAction(node.getAction());
            for (int j = 1; j < init_len_walk; j++) {
                final Node parent = new Node((State) node3);
                parent.setParent(node3.getParent());
                parent.setCost(node3.getCost());
                parent.setAction(node3.getAction());
                final ArrayList<Integer> list = new ArrayList<Integer>();
                for (int size = adlProblem.getActions().size(), k = 0; k < size; ++k) {
                    if (((Action) adlProblem.getActions().get(k)).isApplicable((State) node3)) {
                        list.add(k);
                    }
                }
                if (list.size() == 0) {
                    break;
                }
                final int nextInt = new Random().nextInt(list.size());
                for (final ConditionalEffect conditionalEffect : adlProblem.getActions().get(list.get(nextInt))
                        .getConditionalEffects()) {
                    if (parent.satisfy(conditionalEffect.getCondition())) {
                        node3.apply(conditionalEffect.getEffect());
                    }
                }
                node3.setCost(parent.getCost() + 1.0);
                node3.setParent(parent);
                node3.setAction((int) list.get(nextInt));
                node3.setHeuristic((double) instance.estimate((State) node3, (Condition) adlProblem.getGoal()));
                if (node3.satisfy((Condition) adlProblem.getGoal())) {
                    return node3;
                }
            }
            if (node3.getHeuristic() < hmin) {
                node2 = node3;
                hmin = node3.getHeuristic();
            }
            this.h.add(hmin);
            if (progress(i) > acceptableProgress(i)) {
                return node2;
            }

            if(progress(i) <= 1.0) init_len_walk++;

        }
        if (node2 == null) {
            return node;
        }
        return node2;
    }

    /**
     * Find all the applicable actions
     *
     * @param current the current node
     * @param problem the problem
     * @return the applciable actions
     */
    private Vector<Action> applicableActions(Node current, ADLProblem problem) {
        Vector<Action> v = new Vector<>(10, 1);
        for (int i = 0; i < problem.getActions().size(); i++) {
            Action a = problem.getActions().get(i);
            if (a.isApplicable(current)) {
                v.add(a);
            }
        }
        if (v.size() == 0) return null;
        return v;
    }

    int UniformlyRandomSelectFrom(final ArrayList<Action> list) {
        return new Random().nextInt(list.size());
    }
    
    public Node pureRandomWalk_static(final Node node, final ADLProblem adlProblem) {
        final StateHeuristic instance = StateHeuristic.getInstance(this.getHeuristic(), adlProblem);
        double heuristic = 2.147483647E9;
        Node node2 = null;
        for (int i = 0; i < 2000; ++i) {
            final Node node3 = new Node((State)node);
            node3.setParent(node.getParent());
            node3.setCost(node.getCost());
            node3.setAction(node.getAction());
            for (int j = 0; j < 10; ++j) {
                final Node parent = new Node((State)node3);
                parent.setParent(node3.getParent());
                parent.setCost(node3.getCost());
                parent.setAction(node3.getAction());
                final ArrayList<Integer> list = new ArrayList<Integer>();
                for (int size = adlProblem.getActions().size(), k = 0; k < size; ++k) {
                    if (((Action)adlProblem.getActions().get(k)).isApplicable((State)node3)) {
                        list.add(k);
                    }
                }
                if (list.size() == 0) {
                    break;
                }
                final int nextInt = new Random().nextInt(list.size());
                for (final ConditionalEffect conditionalEffect : adlProblem.getActions().get(list.get(nextInt)).getConditionalEffects()) {
                    if (parent.satisfy(conditionalEffect.getCondition())) {
                        node3.apply(conditionalEffect.getEffect());
                    }
                }
                node3.setCost(parent.getCost() + 1.0);
                node3.setParent(parent);
                node3.setAction((int)list.get(nextInt));
                node3.setHeuristic((double)instance.estimate((State)node3, (Condition)adlProblem.getGoal()));

                if (node3.satisfy((Condition)adlProblem.getGoal())) {
                    return node3;
                }
            }
            if (node3.getHeuristic() < heuristic) {
                node2 = node3;
                heuristic = node3.getHeuristic();
            }
        }
        if (node2 == null) {
            return node;
        }
        return node2;
    }

    /**
     * Search a solution plan to a specified domain and problem using A*.
     *
     * @param problem the problem to solve.
     * @return the plan found or null if no plan was found.
     */
    private Plan extractPlan(final Node node, final ADLProblem problem) {
        Node n = node;
        final Plan plan = new SequentialPlan();
        while (n.getAction() != -1) {
            final Action a = problem.getActions().get(n.getAction());
            plan.add(0, a);
            n = n.getParent();
            if (n == null)
                System.out.println("le parant est null");

        }
        return plan;
    }

    @Override
    public Plan solve(final ADLProblem problem) {
        LOGGER.info("* Starting A* search \n");
        // Search a solution
        final long begin = System.currentTimeMillis();
        final Plan plan = this.arvand(problem);
        final long end = System.currentTimeMillis();
        // If a plan is found update the statistics of the planner
        // and log search information
        if (plan != null) {
            LOGGER.info("* A* search succeeded\n");
            this.getStatistics().setTimeToSearch(end - begin);
        } else {
            LOGGER.info("* A* search failed\n");
        }
        // Return the plan found or null if the search fails.
        return plan;
    }

    /**
     * The main method of the <code>ASP</code> planner.
     *
     * @param args the arguments of the command line.
     */

    public static void main(String[] args) {

        try {

            final Arvand_static planner = new Arvand_static();

            CommandLine cmd = new CommandLine(planner);

            cmd.execute(args);

        } catch (IllegalArgumentException e) {

            LOGGER.fatal(e.getMessage());

        }

    }

}