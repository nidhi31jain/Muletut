package com.muletut.dao;

import java.util.ArrayList;

import com.muletut.entity.Tutorial;
import com.muletut.exceptions.MuletutException;

public interface DaoService {

	ArrayList<String> getMenu() throws MuletutException;

	boolean addMenuItems(String[] menuItemsNames) throws MuletutException;

}
