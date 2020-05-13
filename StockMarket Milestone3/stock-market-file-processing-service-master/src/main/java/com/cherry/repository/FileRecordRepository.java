package com.cherry.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cherry.model.FileRecord;

@Repository
public interface FileRecordRepository extends JpaRepository<FileRecord, Long> {

}
