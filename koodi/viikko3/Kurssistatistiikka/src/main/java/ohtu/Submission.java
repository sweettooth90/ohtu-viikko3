package ohtu;

import java.util.List;

public class Submission {
    private int week;
    private int hours;
    private List<String> exercises;

    public void setHours(int hours) {
        this.hours = hours;
    }

    public int getHours() {
        return hours;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getWeek() {
        return week;
    }

    public List<String> getExercises() {
        return exercises;
    }

    @Override
    public String toString() {
        String prettier;
        prettier = "viikko " + week
        + ", tehtyjä tehtäviä yhteensä " + exercises.size()
        + ", aikaa kului " + hours
        + "h, tehdyt tehtävät ";
        for (String ex : exercises) {
            ex += ", " + ex;
        }

        return prettier;
    }
    
}