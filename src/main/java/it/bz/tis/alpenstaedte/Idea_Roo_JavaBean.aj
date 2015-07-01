// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.AlpsUser;
import it.bz.tis.alpenstaedte.Funding;
import it.bz.tis.alpenstaedte.Idea;
import it.bz.tis.alpenstaedte.ProjectStatus;
import it.bz.tis.alpenstaedte.Topic;
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
    
    public AlpsUser Idea.getOwner() {
        return this.owner;
    }
    
    public void Idea.setOwner(AlpsUser owner) {
        this.owner = owner;
    }
    
}
