package com.cherry.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cherry.model.StockExchange;

@Repository
public interface StockExchangeRepository extends JpaRepository<StockExchange, Long> {

}
