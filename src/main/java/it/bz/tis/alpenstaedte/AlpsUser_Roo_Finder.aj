// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.AlpsUser;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect AlpsUser_Roo_Finder {
    
    public static Long AlpsUser.countFindAlpsUsersByEmailEquals(String email) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        EntityManager em = AlpsUser.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM AlpsUser AS o WHERE o.email = :email", Long.class);
        q.setParameter("email", email);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<AlpsUser> AlpsUser.findAlpsUsersByEmailEquals(String email) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        EntityManager em = AlpsUser.entityManager();
        TypedQuery<AlpsUser> q = em.createQuery("SELECT o FROM AlpsUser AS o WHERE o.email = :email", AlpsUser.class);
        q.setParameter("email", email);
        return q;
    }
    
    public static TypedQuery<AlpsUser> AlpsUser.findAlpsUsersByEmailEquals(String email, String sortFieldName, String sortOrder) {
        if (email == null || email.length() == 0) throw new IllegalArgumentException("The email argument is required");
        EntityManager em = AlpsUser.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM AlpsUser AS o WHERE o.email = :email");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<AlpsUser> q = em.createQuery(queryBuilder.toString(), AlpsUser.class);
        q.setParameter("email", email);
        return q;
    }
    
}
