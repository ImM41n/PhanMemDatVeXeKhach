package com.java.banve.repository;

import com.java.banve.entity.Xe;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface XeRepository extends CrudRepository<Xe, Integer> {
    @Query(nativeQuery = true, value = "SELECT * FROM vexe.xe s order by id desc limit 2")
    List<Xe> findXeLimit();

    @Query(nativeQuery = true, value = "select * from vexe.xe where status = 1")
    List<Xe> findAllByStatusEqualsTrue();

    @Query(nativeQuery = true, value = "select * from vexe.xe where trangthai = 1 and status = 1")
    List<Xe> findAllXeFree();

    @Query(nativeQuery = true, value = "update vexe.xe \n" +
            "inner join vexe.chuyen on xe.id=chuyen.xe_id \n" +
            "set vexe.xe.trangthai=0\n" +
            "where chuyen.status=1 and date(now())>chuyen.ngay ;")
    void updateStatus();
}
