// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Topic;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Topic_Roo_Equals {
    
    public boolean Topic.equals(Object obj) {
        if (!(obj instanceof Topic)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Topic rhs = (Topic) obj;
        return new EqualsBuilder().append(id, rhs.id).append(name, rhs.name).isEquals();
    }
    
    public int Topic.hashCode() {
        return new HashCodeBuilder().append(id).append(name).toHashCode();
    }
    
}