package dao;

import model.Student;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import java.util.List;

public class StudentDAO {
    private final EntityManagerFactory emf;
    public StudentDAO(EntityManagerFactory emf) {
        this.emf = emf;
    }

    public void create(Student s) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(s);
            em.getTransaction().commit();
        } finally {
            if (em.getTransaction().isActive()) em.getTransaction().rollback();
            em.close();
        }
    }

    public List<Student> findAll() {
        EntityManager em = emf.createEntityManager();
        try {
            return em.createQuery("SELECT s FROM Student s ORDER BY s.id", Student.class).getResultList();
        } finally {
            em.close();
        }
    }
}