package lnyswz.oa.service;

import java.util.List;
import java.util.Map;

import lnyswz.oa.bean.Lxr;

public interface LxrService {
	public Map<String, List<Lxr>> getLxrs();
	public Map<Integer, String> getReceivers();
}
