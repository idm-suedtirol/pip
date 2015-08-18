// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package it.bz.tis.alpenstaedte;

import it.bz.tis.alpenstaedte.Idea;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Idea_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Idea.entityManager;
    
    public static final List<String> Idea.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name", "description", "objectives", "outputs", "measures", "target", "budget", "uuid", "topics", "status", "fileNames", "fundings", "owner", "comments", "created_on", "updated_on", "interestedOrganisations", "follower");
    
    public static final EntityManager Idea.entityManager() {
        EntityManager em = new Idea().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Idea.countIdeas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Idea o", Long.class).getSingleResult();
    }
    
    public static List<Idea> Idea.findAllIdeas() {
        return entityManager().createQuery("SELECT o FROM Idea o", Idea.class).getResultList();
    }
    
    public static List<Idea> Idea.findAllIdeas(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Idea o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Idea.class).getResultList();
    }
    
    public static Idea Idea.findIdea(Long id) {
        if (id == null) return null;
        return entityManager().find(Idea.class, id);
    }
    
    public static List<Idea> Idea.findIdeaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Idea o", Idea.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Idea> Idea.findIdeaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Idea o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Idea.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Idea.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Idea.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Idea attached = Idea.findIdea(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Idea.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Idea.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Idea Idea.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Idea merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
