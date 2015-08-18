// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Comment;
import it.bz.tis.alpenstaedte.Funding;
import it.bz.tis.alpenstaedte.Idea;
import it.bz.tis.alpenstaedte.Organisazion;
import it.bz.tis.alpenstaedte.PipUser;
import it.bz.tis.alpenstaedte.ProjectStatus;
import it.bz.tis.alpenstaedte.Topic;
import java.util.Date;
import java.util.List;
import java.util.Set;

privileged aspect Idea_Roo_JavaBean {
    
    public String Idea.getName() {
        return this.name;
    }
    
    public void Idea.setName(String name) {
        this.name = name;
    }
    
    public String Idea.getDescription() {
        return this.description;
    }
    
    public void Idea.setDescription(String description) {
        this.description = description;
    }
    
    public String Idea.getObjectives() {
        return this.objectives;
    }
    
    public void Idea.setObjectives(String objectives) {
        this.objectives = objectives;
    }
    
    public String Idea.getOutputs() {
        return this.outputs;
    }
    
    public void Idea.setOutputs(String outputs) {
        this.outputs = outputs;
    }
    
    public String Idea.getMeasures() {
        return this.measures;
    }
    
    public void Idea.setMeasures(String measures) {
        this.measures = measures;
    }
    
    public String Idea.getTarget() {
        return this.target;
    }
    
    public void Idea.setTarget(String target) {
        this.target = target;
    }
    
    public Integer Idea.getBudget() {
        return this.budget;
    }
    
    public void Idea.setBudget(Integer budget) {
        this.budget = budget;
    }
    
    public String Idea.getUuid() {
        return this.uuid;
    }
    
    public void Idea.setUuid(String uuid) {
        this.uuid = uuid;
    }
    
    public Set<Topic> Idea.getTopics() {
        return this.topics;
    }
    
    public void Idea.setTopics(Set<Topic> topics) {
        this.topics = topics;
    }
    
    public ProjectStatus Idea.getStatus() {
        return this.status;
    }
    
    public void Idea.setStatus(ProjectStatus status) {
        this.status = status;
    }
    
    public Set<String> Idea.getFileNames() {
        return this.fileNames;
    }
    
    public void Idea.setFileNames(Set<String> fileNames) {
        this.fileNames = fileNames;
    }
    
    public Set<Funding> Idea.getFundings() {
        return this.fundings;
    }
    
    public void Idea.setFundings(Set<Funding> fundings) {
        this.fundings = fundings;
    }
    
    public PipUser Idea.getOwner() {
        return this.owner;
    }
    
    public void Idea.setOwner(PipUser owner) {
        this.owner = owner;
    }
    
    public List<Comment> Idea.getComments() {
        return this.comments;
    }
    
    public void Idea.setComments(List<Comment> comments) {
        this.comments = comments;
    }
    
    public Date Idea.getCreated_on() {
        return this.created_on;
    }
    
    public void Idea.setCreated_on(Date created_on) {
        this.created_on = created_on;
    }
    
    public Date Idea.getUpdated_on() {
        return this.updated_on;
    }
    
    public void Idea.setUpdated_on(Date updated_on) {
        this.updated_on = updated_on;
    }
    
    public Set<Organisazion> Idea.getInterestedOrganisations() {
        return this.interestedOrganisations;
    }
    
    public void Idea.setInterestedOrganisations(Set<Organisazion> interestedOrganisations) {
        this.interestedOrganisations = interestedOrganisations;
    }
    
    public Set<PipUser> Idea.getFollower() {
        return this.follower;
    }
    
    public void Idea.setFollower(Set<PipUser> follower) {
        this.follower = follower;
    }
    
}
