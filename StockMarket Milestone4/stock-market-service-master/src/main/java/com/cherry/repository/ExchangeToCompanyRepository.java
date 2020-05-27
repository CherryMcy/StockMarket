package com.cherry.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cherry.id.ExchangeCompanyId;
import com.cherry.model.ExchangeToCompany;

@Repository
public interface ExchangeToCompanyRepository extends JpaRepository<ExchangeToCompany, ExchangeCompanyId> {
	public ExchangeToCompany findByStockCodeEquals(String code);
}
