// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte.dto;

import it.bz.tis.alpenstaedte.dto.GraphTopicRootDto;
import it.bz.tis.alpenstaedte.dto.ProjectStatusDto;
import java.util.List;

privileged aspect GraphTopicRootDto_Roo_JavaBean {
    
    public String GraphTopicRootDto.getName() {
        return this.name;
    }
    
    public void GraphTopicRootDto.setName(String name) {
        this.name = name;
    }
    
    public List<ProjectStatusDto> GraphTopicRootDto.getChildren() {
        return this.children;
    }
    
    public void GraphTopicRootDto.setChildren(List<ProjectStatusDto> children) {
        this.children = children;
    }
    
}