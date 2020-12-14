package app.baitapnhom.phongthuy;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import app.baitapnhom.entities.LoaiSanPham;
import app.baitapnhom.entities.NhaCungCap;
import app.baitapnhom.entities.NuocSanXuat;
import app.baitapnhom.entities.SanPham;
import app.baitapnhom.service.LayThongTinService;
import app.baitapnhom.service.SanPhamService;
import app.baitapnhom.service.ThaoTacSanPhamService;

@Controller
@RequestMapping("/admin")

public class AdminController_SanPham {

	@Autowired
	private SanPhamService spService;

	@Autowired
	private ThaoTacSanPhamService<NhaCungCap> thaoTacNCC;

	@Autowired
	private ThaoTacSanPhamService<LoaiSanPham> thaoTacLoaiSP;

	@Autowired
	private ThaoTacSanPhamService<NuocSanXuat> thaoTacNuocSX;

	@Autowired
	private LayThongTinService layThongTinService;

	@RequestMapping("/quanly")
	public String quanly(Model model) {
		model.addAttribute("sp", new SanPham());
		model.addAttribute("ncc", new NhaCungCap());
		model.addAttribute("loaisp", new LoaiSanPham());
		model.addAttribute("nuocsx", new NuocSanXuat());
		model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
		model.addAttribute("listNCC2", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI2", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI2", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
		return "quanly";
	}
	@GetMapping("/themsanpham2")
	public String themSanPham2(Model model) {
		model.addAttribute("sp", new SanPham());
		model.addAttribute("ncc", new NhaCungCap());
		model.addAttribute("loaisp", new LoaiSanPham());
		model.addAttribute("nuocsx", new NuocSanXuat());
		model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
	
		
		return "themsanpham";
	}
	@RequestMapping(value="/quanly/suasp")
	public String formsuaSP(HttpServletRequest request,@ModelAttribute("sp") SanPham sp,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		int masp = Integer.valueOf(request.getParameter("masp"));
		System.out.println("ma sp "+ masp);
		model.addAttribute("sp2", spService.getSanPhamByID(masp));
		System.out.println("sp "+ spService.getSanPhamByID(masp));
		model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
		return "quanlySua";
	}
	@RequestMapping(value="/quanly/suancc")
	public String formsuaNCC(HttpServletRequest request,@ModelAttribute("sp") SanPham sp,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		model.addAttribute("ncc2",layThongTinService.getNhaCUngCap(request.getParameter("mancc")));
		return "quanlySua";
	}
	@RequestMapping(value="/quanly/sualoai")
	public String formsuaLoai(HttpServletRequest request,@ModelAttribute("sp") SanPham sp,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		model.addAttribute("loai2",layThongTinService.getLoaiPham(request.getParameter("maloai")));
		return "quanlySua";
	}
	@RequestMapping(value="/quanly/suanuoc")
	public String formsuanuoc(HttpServletRequest request,@ModelAttribute("sp") SanPham sp,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		model.addAttribute("nuoc2",layThongTinService.getNuocSanXuat(request.getParameter("manuoc")));
		return "quanlySua";
	}
	@RequestMapping(value = "/quanly/{tensp}", method = { RequestMethod.GET, RequestMethod.POST })
	public String timSanphambyName(Model model,@ModelAttribute("sp") SanPham sp,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		
		if(sp.getTensp()!=null) {
			List<SanPham> listspten = spService.getSPbyName(sp.getTensp());
			if(sp!=null) {
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
				model.addAttribute("listNCC2", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI2", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI2", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
				model.addAttribute("listSPController", listspten);
				
			}
			
		}else {
			model.addAttribute("listSPController", null);
		}
		return "quanly";
	}
	@RequestMapping(value = "/quanly/{tenncc}", method = { RequestMethod.GET, RequestMethod.POST })
	public String timNhacungcapByName(Model model,@ModelAttribute("sp") SanPham sp,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		
		if(ncc.getTenncc()!=null) {
			List<NhaCungCap> listspten = layThongTinService.getNhaCUngCapByName(ncc.getTenncc());
			if(sp!=null) {
				model.addAttribute("listNCC2", listspten);
				model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
			
				model.addAttribute("listLoaiSPI2", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI2", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
			}
			
		}else {
			model.addAttribute("listNCC2", null);
		}
		return "quanly";
	}
	@RequestMapping(value = "/quanly/{tenloai}", method = { RequestMethod.GET, RequestMethod.POST })
	public String timLoaiByName(Model model,@ModelAttribute("sp") SanPham sp,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		
		if(loai.getTenloai()!=null) {
			List<LoaiSanPham> listspten = layThongTinService.getLoaiPhamByName(loai.getTenloai());
			if(sp!=null) {
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI2",listspten);
				model.addAttribute("listNCC2", thaoTacNCC.getTatCa(NhaCungCap.class));
				
				model.addAttribute("listNuocSXI2", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
			}
			
		}else {
			model.addAttribute("listLoaiSPI2", null);
		}
		return "quanly";
	}
	@RequestMapping(value = "/quanly/{tennuoc}", method = { RequestMethod.GET, RequestMethod.POST })
	public String timNuocByName(Model model,@ModelAttribute("sp") SanPham sp,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) {
		
		if(nsx.getTennuoc()!=null) {
			List<NuocSanXuat> listspten = layThongTinService.getNuocSanXuatByName(nsx.getTennuoc());
			if(sp!=null) {
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
				model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listNuocSXI2", listspten);
				model.addAttribute("listNCC2", thaoTacNCC.getTatCa(NhaCungCap.class));
				model.addAttribute("listLoaiSPI2", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
				
			}
			
		}else {
			model.addAttribute("listNuocSXI2", null);
		}
		return "quanly";
	}
	

	@PostMapping("/themsanpham")
	public String addSP(@ModelAttribute("sp") SanPham sp, Model model,
			@RequestParam("fileAnh") MultipartFile multipartFile, HttpServletRequest request
			,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) throws IOException {
		
		NhaCungCap nccI = layThongTinService.getNhaCUngCap(request.getParameter("getNhaCC"));
		LoaiSanPham loaispI = layThongTinService.getLoaiPham(request.getParameter("getLoaiSP"));
		NuocSanXuat nuocsxI = layThongTinService.getNuocSanXuat(request.getParameter("getNuocSX"));
			sp.setNhacc(nccI);
			sp.setLoaisp(loaispI);
			sp.setNuocsx(nuocsxI);
			sp.setTensp(request.getParameter("tensp"));
			sp.setSoluongton(Integer.valueOf(request.getParameter("soluongton")));
			sp.setGianhap(Double.valueOf(request.getParameter("gianhap")));
			sp.setGiaban(Double.valueOf(request.getParameter("giaban")));
			
			saveImage(request, multipartFile, sp);
			spService.themSanPham(sp);
		model.addAttribute("listSPController", spService.getSPbyName(request.getParameter("tensp")));
		return "quanly";
	}
	
	@RequestMapping(value = "/quanly/xoaSP",headers = {"Content-type=application/json" })
	@ResponseBody
	public String deleteSP(HttpServletRequest request,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp
			,@RequestBody SanPham sp1) {
		
		if(spService.deleteSanPham(sp1.getMasp())) {
			return "OK";
		}else {
			return "ThatBai";
		}
	}
	@PostMapping("/quanly/suasanpham")
	public String updateSP(@ModelAttribute("sp") SanPham sp, Model model,
			@RequestParam("fileAnh") MultipartFile multipartFile, HttpServletRequest request
			,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx) throws IOException {
		
		NhaCungCap nccI = layThongTinService.getNhaCUngCap(request.getParameter("getNhaCC"));
		LoaiSanPham loaispI = layThongTinService.getLoaiPham(request.getParameter("getLoaiSP"));
		NuocSanXuat nuocsxI = layThongTinService.getNuocSanXuat(request.getParameter("getNuocSX"));
			sp.setMasp(Integer.valueOf(request.getParameter("masp")));
			sp.setNhacc(nccI);
			sp.setLoaisp(loaispI);
			sp.setNuocsx(nuocsxI);
			sp.setTensp(request.getParameter("tensp"));
			sp.setSoluongton(Integer.valueOf(request.getParameter("soluongton")));
			sp.setGianhap(Double.valueOf(request.getParameter("gianhap")));
			sp.setGiaban(Double.valueOf(request.getParameter("giaban")));
			saveImage(request, multipartFile, sp);
			spService.suaSanPham(sp);
			model.addAttribute("listSPController", spService.getSPbyName(request.getParameter("tensp")));
			model.addAttribute("sp", new SanPham());
			model.addAttribute("ncc", new NhaCungCap());
			model.addAttribute("loaisp", new LoaiSanPham());
			model.addAttribute("nuocsx", new NuocSanXuat());
		return "redirect:/admin/quanly";
	}
	@PostMapping("/hienthisanpham")
	public String upload2(@ModelAttribute("sp") SanPham sp, Model model,
			@RequestParam("fileAnh") MultipartFile multipartFile, @RequestParam("getNhaCC") String ncc,
			@RequestParam("getLoaiSP") String loaisp, @RequestParam("getNuocSX") String nuocsx,
			HttpServletRequest request) throws IOException {
		NhaCungCap nccI = layThongTinService.getNhaCUngCap(ncc);
		LoaiSanPham loaispI = layThongTinService.getLoaiPham(loaisp);
		NuocSanXuat nuocsxI = layThongTinService.getNuocSanXuat(nuocsx);
			sp.setNhacc(nccI);
			sp.setLoaisp(loaispI);
			sp.setNuocsx(nuocsxI);
			
			saveImage(request, multipartFile, sp);
			spService.themSanPham(sp);
		model.addAttribute("listSPController", spService.getSanPhamByID(sp.getMasp()));
		return "themsanpham";
	}
	//@PostMapping("/themnhacungcap")
	@RequestMapping(value = "/themnhacungcap", method = RequestMethod.POST )
	public String themNhaCungCap(HttpServletRequest request,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp) {
		
		NhaCungCap ncc2 = new NhaCungCap();
		ncc2.setTenncc(request.getParameter("tenncc"));
			
		System.out.println("kiemtra"+request.getParameter("tenncc"));
		List<NhaCungCap> list = thaoTacNCC.getTatCa(NhaCungCap.class);
		List<Integer> listMa = new ArrayList<Integer>();
		
		for (int i = 0; i < list.size(); i++) {
			listMa.add(Integer.valueOf(list.get(i).getMancc()));
		}
		int ma = randomMa();
		boolean check = true;
		while(check) {
			if(!listMa.contains(ma)) {
				ncc2.setMancc(String.valueOf(ma));
				check = false;
			}else {
				ma = randomMa();
			}
		}
		
		
		/*
		 * if(list.size() == 0) ncc2.setMancc("1"); else
		 * ncc2.setMancc(String.valueOf(list.size()+1));
		 */
		thaoTacNCC.Them(ncc2);
		return "redirect:/admin/quanly";
	}
	
	private int randomMa() {
		Random rnd = new Random();
		int ma = rnd.nextInt(99999);
		return ma;
	}
	@RequestMapping(value = "/quanly/suanhacungcap", method = RequestMethod.POST )
	public String suaNhaCungCap(HttpServletRequest request,Model model) {
		
		NhaCungCap ncc2 = layThongTinService.getNhaCUngCap(request.getParameter("mancc"));
		System.out.println(request.getParameter("mancc"));
		ncc2.setMancc(request.getParameter("mancc").trim());
		ncc2.setTenncc(request.getParameter("tenncc").trim());
		System.out.println("kiemtra"+request.getParameter("tenncc"));
		thaoTacNCC.Sua(ncc2);
		
		return "redirect:/admin/quanly";
	}
	
	@RequestMapping(value = "/quanly/xoancc",headers = {"Content-type=application/json" })
	@ResponseBody
	public String xoaNhaCungCap(HttpServletRequest request,Model model,@ModelAttribute("ncc") NhaCungCap ncc,@RequestBody NhaCungCap ncc1
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp) {
		System.out.println(ncc1.toString());
		if(layThongTinService.deleteNCC(ncc1.getMancc())) {
			return "OK";
		}else {
			return "ThatBai";
		}
	}
	
	//@PostMapping("/themnuocsanxuat")
	@RequestMapping(value = "/themnuocsanxuat", method = RequestMethod.POST )
	public String themNuocSanXuat(HttpServletRequest request,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp,Model model) {
		List<NuocSanXuat> list = thaoTacNuocSX.getTatCa(NuocSanXuat.class);
		NuocSanXuat nsx2 = new NuocSanXuat();
		nsx2.setTennuoc(request.getParameter("tennuoc"));
		System.out.println("nuoc "+request.getParameter("tennuoc"));
		if(list.size() == 0)
			nsx2.setManuoc("1");
		else
			nsx2.setManuoc(String.valueOf(list.size()+1));
		
		thaoTacNuocSX.Them(nsx2);
		model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
		return "redirect:/admin/quanly";
	}
	@RequestMapping(value = "/quanly/xoanuoc",headers = {"Content-type=application/json" })
	@ResponseBody
	public String xoaNuocSanXuat(HttpServletRequest request,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@ModelAttribute("nuocsx") NuocSanXuat nsx,@RequestBody NuocSanXuat nc1,@ModelAttribute("sp") SanPham sp) {
		
		if(layThongTinService.deleteNCC(nc1.getManuoc())) {
			return "OK";
		}else {
			return "ThatBai";
		}
	}
	@RequestMapping(value = "/quanly/suanuocsx", method = RequestMethod.POST )
	public String suaNuocSanXuat(HttpServletRequest request,Model model) {
		
		NuocSanXuat nc2 = layThongTinService.getNuocSanXuat(request.getParameter("manuoc"));
		
		nc2.setManuoc(request.getParameter("manuoc").trim());
		nc2.setTennuoc(request.getParameter("tennuoc").trim());
		
		thaoTacNuocSX.Sua(nc2);
		
		return "redirect:/admin/quanly";
	}
	@PostMapping("/themloaisanpham")
	public String themLoaiSanPham(HttpServletRequest request,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loaisp,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp,Model model) {
		List<LoaiSanPham> list = thaoTacLoaiSP.getTatCa(LoaiSanPham.class);
		LoaiSanPham loaisp2 = new LoaiSanPham();
		if(list.size() == 0)
			loaisp2.setMaloai("1");
		else
			loaisp2.setMaloai(String.valueOf(list.size()+1));
		loaisp2.setTenloai(request.getParameter("tenloai"));
		thaoTacLoaiSP.Them(loaisp2);
		model.addAttribute("listNCC", thaoTacNCC.getTatCa(NhaCungCap.class));
		model.addAttribute("listLoaiSPI", thaoTacLoaiSP.getTatCa(LoaiSanPham.class));
		model.addAttribute("listNuocSXI", thaoTacNuocSX.getTatCa(NuocSanXuat.class));
		return "redirect:/admin/quanly";
	}
	@RequestMapping(value = "/quanly/xoaloai",headers = {"Content-type=application/json" })
	@ResponseBody
	public String xoaLoaiSanPham(HttpServletRequest request,Model model,@ModelAttribute("ncc") NhaCungCap ncc
			,@ModelAttribute("loaisp") LoaiSanPham loai,@RequestBody LoaiSanPham lp1,@ModelAttribute("nuocsx") NuocSanXuat nsx,@ModelAttribute("sp") SanPham sp) {
		
		if(layThongTinService.deleteNCC(lp1.getMaloai())) {
			return "OK";
		}else {
			return "ThatBai";
		}
	}
	@RequestMapping(value = "/quanly/sualoaisp", method = RequestMethod.POST )
	public String suaLoaiSanPham(HttpServletRequest request,Model model) {
		
		LoaiSanPham loai2 = layThongTinService.getLoaiPham(request.getParameter("maloai"));
		
		loai2.setMaloai(request.getParameter("maloai").trim());
		loai2.setTenloai(request.getParameter("tenloai").trim());
		
		thaoTacLoaiSP.Sua(loai2);
		
		return "redirect:/admin/quanly";
	}
	private void saveImage(HttpServletRequest request, MultipartFile multipartFile, SanPham sp) throws IOException {
		InputStream stream = multipartFile.getInputStream();
		byte[] data = new byte[stream.available()];
		stream.read(data);
		String tenHinh = randomNameFile(request) + "." + multipartFile.getOriginalFilename().split("\\.")[1];
		sp.setUrlhinh(tenHinh);
		spService.themSanPham(sp);
		@SuppressWarnings("deprecation")
		String path = request.getRealPath("resources/imguploads/") + tenHinh;
		FileOutputStream fos = new FileOutputStream(path);
		fos.write(data);
		fos.close();
	}
	
	private String randomNameFile(HttpServletRequest request) {
		String url = request.getRealPath("resources/imguploads/");
		File file = new File(url);
		if(!file.exists())
			file.mkdir();
        List<String> getName = new ArrayList<String>();
        
        File folder = new File(request.getRealPath("resources/imguploads/"));
        File[] listOfFiles = folder.listFiles();

        for (int i = 0; i < listOfFiles.length; i++) {
          if (listOfFiles[i].isFile()) {
            getName.add(listOfFiles[i].getName().split("\\.")[0]);
            System.out.println(listOfFiles[i].getName());
          }
        }
        String name = fileNameA();
        if(!(getName.contains(name)))
        		return name;
        else {
        	while(true) {
        		name = fileNameA();
            	if(getName.contains(name) == false)
            		return name;
        	}
        }
	}
	
	private String fileNameA() {
		String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
		Random rnd = new Random();
        while (salt.length() < 15) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;
        
	}
	
	
	
	

}
