unit funcoes_nfe;

interface


type
  tDadosICMS02 = record
  origem: string;
  cst: string;
  aliqAdRemICMS: real;
  vICMSMono: real;
  end;

type
  tDadosICMS15 = record
  origem: string;
  cst: string;
  aliqAdRemICMS: real;
  vICMSMono: real;
  adRemICMSReten: real;
  vICMSMonoReten: real;
  end;


function fGerarTagIcms02(pDadosIcms02: tDadosICMS02): String;
function fGerarTagIcms15(pDadosIcms15: tDadosICMS15): String;

implementation

uses Func, Func2;


function fGerarTagIcms02(pDadosIcms02: tDadosICMS02): String;
var
mRetorno: String;
begin

mRetorno := mRetorno + fGeraXMLString(0,'orig',pDadosIcms02.origem)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLString(0,'CST',pDadosIcms02.cst)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLReal(4,'adRemICMS',pDadosIcms02.aliqAdRemICMS)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLReal(4,'vICMSMono',pDadosIcms02.vICMSMono)+mQuebraLinha;

result := mRetorno

end;


function fGerarTagIcms15(pDadosIcms15: tDadosICMS15): String;
var
mRetorno: String;
begin

mRetorno := mRetorno + fGeraXMLString(0,'orig',pDadosIcms15.origem)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLString(0,'CST',pDadosIcms15.cst)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLReal(4,'adRemICMS',pDadosIcms15.aliqAdRemICMS)+mQuebraLinha;
mRetorno := mRetorno + fGeraXMLReal(4,'vICMSMono',pDadosIcms15.vICMSMono)+mQuebraLinha;



result := mRetorno

end;



end.
