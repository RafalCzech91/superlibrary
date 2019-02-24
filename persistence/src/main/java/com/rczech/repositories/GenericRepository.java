package com.rczech.repositories;



import com.rczech.util.PersistenceUtil;
import org.hibernate.Session;
import javax.persistence.EntityTransaction;
import java.lang.reflect.ParameterizedType;

public abstract class GenericRepository<T, K> {

    protected final Session session;
    protected final Class<T> entityClass;

    @SuppressWarnings("unchecked")
    protected GenericRepository() {
        ParameterizedType genericSuperclass = (ParameterizedType) getClass().getGenericSuperclass();
        this.entityClass = (Class<T>) genericSuperclass.getActualTypeArguments()[0];
        session = PersistenceUtil.getSessionFactory().openSession();
    }

    public void create(T entity) {
        EntityTransaction transaction = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            session.persist(entity);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    public T read(K id) {
        return session.find(entityClass, id);
    }

    public void update(T entity) {
        EntityTransaction transaction = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            session.merge(entity);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }


    public void delete(T entity) {
        EntityTransaction transaction = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            session.remove(entity);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    public void deleteById(K id) {
        EntityTransaction transaction = null;
        try {
            transaction = session.getTransaction();
            transaction.begin();
            T entityToRemove = read(id);
            session.remove(entityToRemove);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }
}