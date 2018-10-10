select a.FCREATEORGID as '创建组织',a.FUSEORGID as '使用组织',
a.FNUMBER as '编码',a.FMATERIALSRC as '物料来源',
b.FNAME as '名称',b.FSPECIFICATION as '规格型号',
a.FMNEMONICCODE as '助记码',a.FOLDNUMBER as '旧物料编码',
d.FNAME as '物料分组',c.FNUMBER as '物料分组编码',
a.FDOCUMENTSTATUS as '数据状态',a.FFORBIDSTATUS as '禁用状态',
a.FCREATORID as '创建人',a.FCREATEDATE as '创建日期',
a.FMODIFIERID as '修改人',a.FMODIFYDATE as '修改日期',a.FAPPROVERID as '审核人',
a.FAPPROVEDATE as '审核日期',a.FFORBIDDERID as '禁用人',
a.FFORBIDDATE as '禁用日期',a.FIMGSTORAGETYPE as '图片存储类型',
e.FERPCLSID as '物料属性',f.FNAME as '存货类别',
e.FTAXTYPE as '税分类',g.FNAME as '标准税率',
e.FBASEUNITID as '基本单位',e.FISPURCHASE as '允许采购',
e.FISINVENTORY as '允许库存',e.FISSUBCONTRACT as '允许委外',
e.FISSALE as '允许销售',e.FISPRODUCE as '允许生产',
e.FISASSET as '允许资产',e.FBARCODE as '条码',
e.FGROSSWEIGHT as '毛重',e.FNETWEIGHT as '净重',
e.FVOLUMEUNITID as '尺寸单位',e.FLENGTH as '长',
e.FWIDTH as '宽',e.FHEIGHT '高',
e.FWEIGHTUNITID as '重量单位',e.FVOLUME as '体积',
h.FSTOREUNITID as '库存单位',h.FAUXUNITID as '辅助单位',
y.FNAME as '仓库',h.FSTOCKPLACEID as '仓位',
j.FAddress as '仓库地址',h.FISLOCKSTOCK as '允许锁库',
h.FISCYCLECOUNTING as '启用盘点周期',h.FCOUNTCYCLE as '盘点周期',
h.FISMUSTCOUNTING as '必盘',h.FISBATCHMANAGE as '启用批号管理',
h.FBATCHRULEID as '批号管理规则',h.FISKFPERIOD as '启用保质期管理',
h.FISEXPPARTOFLOT as '批号附属信息',h.FEXPUNIT as '保质期单位',
h.FEXPPERIOD as '保质期',h.FONLINELIFE as '在架寿命期',
h.FREFCOST as '参考成本',h.FCURRENCYID as '币别',
h.FIsEnableMinStock as '启用最小库存',h.FIsEnableSafeStock as '启用安全库存',
h.FSNCODERULE as '序列号编码规则',h.FIsEnableReOrder as '启用再订货点',
h.FIsEnableMaxStock as '启用最大库存',h.FSNUNIT as '序列号单位',
h.FMINSTOCK as '最小库存',h.FSAFESTOCK as '安全库存',
h.FREORDERGOOD as '再订货点',h.FEconReOrderQty as '经济订货批量',
h.FMAXSTOCK as '最大库存',e.FSUITE as '套件'
from T_BD_MATERIAL a inner join T_BD_MATERIAL_L b on a.FMATERIALID=b.FMATERIALID
left outer join T_BD_MATERIALGROUP c on a.FMATERIALGROUP=c.FID left outer join T_BD_MATERIALGROUP_L d
on c.FID=d.FID left outer join T_BD_MATERIALBASE e on a.	
FMATERIALID=e.FMATERIALID left outer join T_BD_MATERIALCATEGORY_L f on
e.FCATEGORYID=f.FCATEGORYID left outer join T_BD_TAXRATE_L g on e.FTAXRATEID=g.FID
left outer join T_BD_MATERIALSTOCK h on a.FMATERIALID=h.FMATERIALID left outer join
t_BD_Stock_L y on y.FSTOCKID=h.FSTOCKID left outer join t_BD_Stock j on j.FSTOCKID=h.FSTOCKID
