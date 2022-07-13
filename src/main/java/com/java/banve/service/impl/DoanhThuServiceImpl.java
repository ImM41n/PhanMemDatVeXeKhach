package com.java.banve.service.impl;

import com.java.banve.repository.DoanhThuRepository;
import com.java.banve.service.DoanhThuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DoanhThuServiceImpl implements DoanhThuService {

    @Autowired
    private DoanhThuRepository doanhThuRepository;

    @Override
    public List<Integer> countForward() {
        return count("Bình Định");
    }

    @Override
    public List<Integer> countReverse() {
        return count("Sài Gòn");
    }

    @Override
    public List<Integer> count(String location) {
        List<String> date =  new ArrayList<>();
        date.add("2022-1-1");
        date.add("2022-2-1");
        date.add("2022-3-1");
        date.add("2022-4-1");
        date.add("2022-5-1");
        date.add("2022-6-1");
        date.add("2022-7-1");
        date.add("2022-8-1");
        date.add("2022-9-1");
        date.add("2022-10-1");
        date.add("2022-11-1");
        date.add("2022-12-1");
        date.add("2022-12-31");
        List<Integer> temp = new ArrayList<>();
        for (int i = 0; i < date.size() - 1; i++) {
            temp.add(this.doanhThuRepository.countAll(date.get(i),date.get(i + 1), location));
        }
        return temp;
    }
}
