// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.se;

import com.se.Sadasdasd;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Sadasdasd_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Sadasdasd.entityManager;
    
    public static final List<String> Sadasdasd.fieldNames4OrderClauseFilter = java.util.Arrays.asList("name");
    
    public static final EntityManager Sadasdasd.entityManager() {
        EntityManager em = new Sadasdasd().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Sadasdasd.countSadasdasds() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Sadasdasd o", Long.class).getSingleResult();
    }
    
    public static List<Sadasdasd> Sadasdasd.findAllSadasdasds() {
        return entityManager().createQuery("SELECT o FROM Sadasdasd o", Sadasdasd.class).getResultList();
    }
    
    public static List<Sadasdasd> Sadasdasd.findAllSadasdasds(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sadasdasd o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sadasdasd.class).getResultList();
    }
    
    public static Sadasdasd Sadasdasd.findSadasdasd(Long id) {
        if (id == null) return null;
        return entityManager().find(Sadasdasd.class, id);
    }
    
    public static List<Sadasdasd> Sadasdasd.findSadasdasdEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Sadasdasd o", Sadasdasd.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Sadasdasd> Sadasdasd.findSadasdasdEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Sadasdasd o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Sadasdasd.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Sadasdasd.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Sadasdasd.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Sadasdasd attached = Sadasdasd.findSadasdasd(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Sadasdasd.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Sadasdasd.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Sadasdasd Sadasdasd.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Sadasdasd merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
