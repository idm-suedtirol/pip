// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte.dto;

import it.bz.tis.alpenstaedte.dto.FundingDto;
import it.bz.tis.alpenstaedte.dto.NewIdeaDto;
import it.bz.tis.alpenstaedte.dto.TopicDto;
import java.util.Date;
import java.util.List;
import java.util.Set;

privileged aspect NewIdeaDto_Roo_JavaBean {
    
    public String NewIdeaDto.getUuid() {
        return this.uuid;
    }
    
    public void NewIdeaDto.setUuid(String uuid) {
        this.uuid = uuid;
    }
    
    public String NewIdeaDto.getProjectName() {
        return this.projectName;
    }
    
    public void NewIdeaDto.setProjectName(String projectName) {
        this.projectName = projectName;
    }
    
    public String NewIdeaDto.getProjectDesc() {
        return this.projectDesc;
    }
    
    public void NewIdeaDto.setProjectDesc(String projectDesc) {
        this.projectDesc = projectDesc;
    }
    
    public Set<TopicDto> NewIdeaDto.getTopics() {
        return this.topics;
    }
    
    public void NewIdeaDto.setTopics(Set<TopicDto> topics) {
        this.topics = topics;
    }
    
    public List<FundingDto> NewIdeaDto.getFundings() {
        return this.fundings;
    }
    
    public void NewIdeaDto.setFundings(List<FundingDto> fundings) {
        this.fundings = fundings;
    }
    
    public Integer NewIdeaDto.getNumberOfOrganisazions() {
        return this.numberOfOrganisazions;
    }
    
    public void NewIdeaDto.setNumberOfOrganisazions(Integer numberOfOrganisazions) {
        this.numberOfOrganisazions = numberOfOrganisazions;
    }
    
    public Date NewIdeaDto.getUpdated_on() {
        return this.updated_on;
    }
    
    public void NewIdeaDto.setUpdated_on(Date updated_on) {
        this.updated_on = updated_on;
    }
    
    public String NewIdeaDto.getObjectives() {
        return this.objectives;
    }
    
    public void NewIdeaDto.setObjectives(String objectives) {
        this.objectives = objectives;
    }
    
    public String NewIdeaDto.getOutputs() {
        return this.outputs;
    }
    
    public void NewIdeaDto.setOutputs(String outputs) {
        this.outputs = outputs;
    }
    
    public String NewIdeaDto.getMeasures() {
        return this.measures;
    }
    
    public void NewIdeaDto.setMeasures(String measures) {
        this.measures = measures;
    }
    
    public String NewIdeaDto.getTarget() {
        return this.target;
    }
    
    public void NewIdeaDto.setTarget(String target) {
        this.target = target;
    }
    
    public Integer NewIdeaDto.getBudget() {
        return this.budget;
    }
    
    public void NewIdeaDto.setBudget(Integer budget) {
        this.budget = budget;
    }
    
    public String NewIdeaDto.getStatus() {
        return this.status;
    }
    
    public void NewIdeaDto.setStatus(String status) {
        this.status = status;
    }
    
}
