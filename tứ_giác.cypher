// Truy vấn hiển thị tên, công thức diện tích và tính chất của các hình
MATCH (q:Quadrilateral)
RETURN q.name_vi AS Ten_Hinh, 
       q.definition AS Dinh_Nghia, 
       q.area_formula AS Dien_Tich, 
       q.perimeter_formula AS Chu_Vi;

MATCH (n:Quadrilateral)
OPTIONAL MATCH (n)-[r:SPECIALIZES_TO]->(m:Quadrilateral)
RETURN n, r, m;