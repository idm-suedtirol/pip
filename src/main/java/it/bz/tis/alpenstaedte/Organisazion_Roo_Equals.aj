// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Organisazion;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect Organisazion_Roo_Equals {
    
    public boolean Organisazion.equals(Object obj) {
        if (!(obj instanceof Organisazion)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        Organisazion rhs = (Organisazion) obj;
        return new EqualsBuilder().append(name, rhs.name).append(pic, rhs.pic).isEquals();
    }
    
    public int Organisazion.hashCode() {
        return new HashCodeBuilder().append(name).append(pic).toHashCode();
    }
    
}
