using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace WebApplication2.Models
{
    public class exec
    {
        public static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
        public static DataTable log(string cmdtxt)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlDataAdapter cmd = new SqlDataAdapter(cmdtxt, conn);


            DataTable dt = new DataTable();

            cmd.Fill(dt);
            return dt;
        }

        internal object getlsp()
        {

            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select  * from loaisanpham");
            dt = log(cmdtext);
            List<loaisp> li = new List<loaisp>();
            foreach (DataRow dr in dt.Rows)
            {
                loaisp ad = new loaisp();
                ad.maloaisp = dr[0].ToString();
                ad.tenloai = dr[1].ToString();
                li.Add(ad);
            }
            return li;
        }

        internal object getct(string masp)
        {
            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select  * from sanpham where masanpham ='{0}'",masp);
            dt = log(cmdtext);
            List<sanpham> li = new List<sanpham>();
            foreach (DataRow dr in dt.Rows)
            {
                sanpham ad = new sanpham();
                ad.maloaisanpham = dr[0].ToString();
                ad.masanpham = dr[1].ToString();
                ad.tensp = dr[2].ToString();
                ad.giaban = int.Parse(dr[3].ToString());
                ad.mota = dr[4].ToString();
                ad.hinhanh = dr[5].ToString();
                ad.tacgia = dr[6].ToString();
                li.Add(ad);
            }
            return li;
        }

        public IList<sanpham> getsp(string maloai)
        {
            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select top(20) * from sanpham where maloaisanpham like '%{0}%' ",maloai);
            dt = log(cmdtext);
            List<sanpham> li = new List<sanpham>();
            foreach (DataRow dr in dt.Rows)
            {
                sanpham ad = new sanpham();
                ad.maloaisanpham = dr[0].ToString();
                ad.masanpham = dr[1].ToString();
                ad.tensp = dr[2].ToString();
                ad.giaban =int.Parse( dr[3].ToString());
                ad.mota = dr[4].ToString();
                ad.hinhanh = dr[5].ToString();
                ad.tacgia= dr[6].ToString();
                li.Add(ad);
            }
            return li;
        }
    }
}