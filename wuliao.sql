select a.FCREATEORGID as '������֯',a.FUSEORGID as 'ʹ����֯',
a.FNUMBER as '����',a.FMATERIALSRC as '������Դ',
b.FNAME as '����',b.FSPECIFICATION as '����ͺ�',
a.FMNEMONICCODE as '������',a.FOLDNUMBER as '�����ϱ���',
d.FNAME as '���Ϸ���',c.FNUMBER as '���Ϸ������',
a.FDOCUMENTSTATUS as '����״̬',a.FFORBIDSTATUS as '����״̬',
a.FCREATORID as '������',a.FCREATEDATE as '��������',
a.FMODIFIERID as '�޸���',a.FMODIFYDATE as '�޸�����',a.FAPPROVERID as '�����',
a.FAPPROVEDATE as '�������',a.FFORBIDDERID as '������',
a.FFORBIDDATE as '��������',a.FIMGSTORAGETYPE as 'ͼƬ�洢����',
e.FERPCLSID as '��������',f.FNAME as '������',
e.FTAXTYPE as '˰����',g.FNAME as '��׼˰��',
e.FBASEUNITID as '������λ',e.FISPURCHASE as '����ɹ�',
e.FISINVENTORY as '������',e.FISSUBCONTRACT as '����ί��',
e.FISSALE as '��������',e.FISPRODUCE as '��������',
e.FISASSET as '�����ʲ�',e.FBARCODE as '����',
e.FGROSSWEIGHT as 'ë��',e.FNETWEIGHT as '����',
e.FVOLUMEUNITID as '�ߴ絥λ',e.FLENGTH as '��',
e.FWIDTH as '��',e.FHEIGHT '��',
e.FWEIGHTUNITID as '������λ',e.FVOLUME as '���',
h.FSTOREUNITID as '��浥λ',h.FAUXUNITID as '������λ',
y.FNAME as '�ֿ�',h.FSTOCKPLACEID as '��λ',
j.FAddress as '�ֿ��ַ',h.FISLOCKSTOCK as '��������',
h.FISCYCLECOUNTING as '�����̵�����',h.FCOUNTCYCLE as '�̵�����',
h.FISMUSTCOUNTING as '����',h.FISBATCHMANAGE as '�������Ź���',
h.FBATCHRULEID as '���Ź������',h.FISKFPERIOD as '���ñ����ڹ���',
h.FISEXPPARTOFLOT as '���Ÿ�����Ϣ',h.FEXPUNIT as '�����ڵ�λ',
h.FEXPPERIOD as '������',h.FONLINELIFE as '�ڼ�������',
h.FREFCOST as '�ο��ɱ�',h.FCURRENCYID as '�ұ�',
h.FIsEnableMinStock as '������С���',h.FIsEnableSafeStock as '���ð�ȫ���',
h.FSNCODERULE as '���кű������',h.FIsEnableReOrder as '�����ٶ�����',
h.FIsEnableMaxStock as '���������',h.FSNUNIT as '���кŵ�λ',
h.FMINSTOCK as '��С���',h.FSAFESTOCK as '��ȫ���',
h.FREORDERGOOD as '�ٶ�����',h.FEconReOrderQty as '���ö�������',
h.FMAXSTOCK as '�����',e.FSUITE as '�׼�'
from T_BD_MATERIAL a inner join T_BD_MATERIAL_L b on a.FMATERIALID=b.FMATERIALID
left outer join T_BD_MATERIALGROUP c on a.FMATERIALGROUP=c.FID left outer join T_BD_MATERIALGROUP_L d
on c.FID=d.FID left outer join T_BD_MATERIALBASE e on a.	
FMATERIALID=e.FMATERIALID left outer join T_BD_MATERIALCATEGORY_L f on
e.FCATEGORYID=f.FCATEGORYID left outer join T_BD_TAXRATE_L g on e.FTAXRATEID=g.FID
left outer join T_BD_MATERIALSTOCK h on a.FMATERIALID=h.FMATERIALID left outer join
t_BD_Stock_L y on y.FSTOCKID=h.FSTOCKID left outer join t_BD_Stock j on j.FSTOCKID=h.FSTOCKID
