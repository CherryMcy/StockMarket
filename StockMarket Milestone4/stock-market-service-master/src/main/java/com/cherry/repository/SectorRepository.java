package com.cherry.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cherry.model.Sector;

@Repository
public interface SectorRepository extends JpaRepository<Sector, Long> {

}
