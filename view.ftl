<div id="NLRE_${instanceId}" class="super-widget wcm-widget-class fluig-style-guide" data-params="NLRE.instance()">
	<script type="text/javascript" src="/webdesk/vcXMLRPC.js"></script>
<div class="container-fluid">	
<div id="idDivNLRESC" class="row" style="width:50%;display:block;margin-left: auto;margin-right: auto;margin-bottom:10px;outline: blue solid 2px;padding:10px;">
<label class="col-md-12" style="color:blue;text-align:center;" title="Visível somente para Administradores. SC não precisam desta seleção porque o código já reconhece qual SC está no aplicativo e já seleciona para ele">
Administrador, indique um SC a pesquisar
<select id="idSelNLRESC" class="form-control">
</select>
</label>
</div>
<div class="claGridNLRE">
<div class="claDINLRE">
<label><font color="#003e3e" size="2">Data Inicial</font>
<input type="date" id="idDatNLREDAI" class="form-control">
</label>
</div>
<div class="claDFNLRE">
<label><font color="#620000" size="2">Data Final</font>
<input type="date" id="idDatNLREDAF" class="form-control">
</label>
</div>
<div class="claFANLRE">
<label><font color="#003e3e" size="2">Fatura (Opcional)</font>
<input type="text" id="idTxtNLREFatura" class="form-control">
</label>
</div>
<div class="claEXNLRE">
<label><br>
<button type="button" id="idBtnNLREExecuta" class="executar"><font color="#003e3e" size="2">Pesquisar <img src='/w_ucrg_nlequipe/resources/images/pesquisar.png' height='20' width='20'/></font></button><label id="idDivNLRESpinner"></label>
</label>
</div>


<!-- <div class="claAvisoNLRE claItemAviso">
<span id="idSpaAvisosNLRE"></span>
</div> -->
<div class="claTBNLRE">
<label><font color="#003e3e" size="6" id="idH3NLRotuloTabela">Notas Liquidadas</font> <label id="idPNLREExportarCSV"></label>
<div class="claFiltroNLRE">
<label title="Pesquise, após a tabela estar preenchida, com texto ou parte de texto. 'Backspace' volta à condição original"><font color="#003e3e" size="2">Filtro </font> <input type="text" id="idTxtNLREVerTab" class="form-control" />
</label>
<span id="idSpaAvisosNLRE" style="font-size:80%;"></span>
<br>
<br>
<label><img src='/w_ucrg_nlequipe/resources/images/multiplicar.png' height='20' width='20'/><font color="#003e3e" size="2">PENDENTE </font><img src='/w_ucrg_nlequipe/resources/images/sim.png' height='20' width='20'/><font color="#003e3e" size="2">CONCLUÍDO </font> <img src='/w_ucrg_nlequipe/resources/images/seta-dupla.png' height='20' width='20'/><font color="#003e3e" size="2">TRANSFERIDA </font></label>

</div>
<!-- ----------%%%%%%%%%%%%%%%%%%%%------- TABELA PRINCIPAL E DE TRANSFERÊNCIA DE NOTAS (NÃO DE FILES)-->
<div style="height:300px;overflow-y: scroll;">
<div>
<table id="idTabNLRENL"></table>
</div>
</div>
<h2 id="idH2NLTRANSF"></h2>
<div>
<table id="idTabNLTRANSF"></table>
</div>
</div>
</div><!-- fim do grid claGridNLRE********************************* -->

<div class="conteiner-fluid">


<div class="claGridNLRERateio">
<div class="claTBNLRAROTULO">
<!-- aqui o SC faz seu rateio -->
<!-- <label><font color='#004646' size='5' id="idH3NLREROTULOPESQUISA">Rateio para Equipe/Advogados</font></label></div> -->
<br>
<div id="idArtNLRABlocoTransfer" class="claComBorda" style="margin-top:15px;">
<h3 id="idH3NLRACLIENTE" class="tituloFatura" style="color:#003c3c;text-align:right;"><br></h3>
<div id="idArtNLREExtra" class="claNLRAINCLUIRADV claComBorda">
<!--  <button type="button" id="idBtnNLRETransTopo" class="voltar" style="text-align:right;"><img src='/w_ucrg_nlequipe/resources/images/resposta.png' height='15' width='15'/></button>-->
<label><font color="#008c8c" size="5">Transferência de Fatura <img src='/w_ucrg_nlequipe/resources/images/transfer.png' height='40' width='40'/></font></label>
<br>
<h3 id="idH3NLRACLIENTE" style="color:#003c3c;text-align:right;"></h3>
<div id="idArtNLRETransf" class="claNLRATRANSF claComBorda">

<label id="idLblNLRERot" style="color:#003535;font-weight:900;">
&nbsp;
</label>

<select id="idSelNLRETransf" class="form-control"></select>
<button type="button" id="idBtnNLRATransferir" class="executar" title="Transfere a tarefa de fazer o rateio para outro BP">Transferir <img src="/w_ucrg_nlequipe/resources/images/seta-dupla.png" height="20" width="20"></button>
<span id="idSpaNLRAAvisoTransferir"></span>
</div>
</div>
<br>
<br>


<div id="idArtNLRABlocoRateio" class="claComBorda" style="margin-top:15px;">
<label><font color="#003535" size="5">Rateio de Fatura <img src='/w_ucrg_nlequipe/resources/images/rateio.png' height='50' width='50'/></font></label>
<div id="idArtNLRAAdv" class="claNLRAADV claComBorda">
<label><font color="#003e3e" size="2">Advogados a incluir no rateio</font>
<select id="idSelNLREAdvs" class="form-control"></select>
</label>
<label><font color="#003e3e" size="2">Entre com o percentual para este advogado</font>
<input type="number" id="idNumNLRETaxa" class="form-control">
</label>
<button type="button" id="idBtnNLREIncluir" class="incluirlista"><font color="#003e3e" size="2">ADICIONAR </font>
<img src="/w_ucrg_nlequipe/resources/images/adicionar.png" height="30" width="30"></button>
</div>
<!-- --------------%%%%%%%%%%%--------------------TABELA SUGESTÕES DE RATEIO -->
<div id="idArtNLRASUGTAB" class="claComBorda">
<div class="claNLRATABSUG">
<div style="height:300px;overflow-y: scroll;">
<table id="idTabNLRENLRA"></table>
</div>
</div>
<div class="claNLRATABSUGALERTA">
<span id="idSpaNLRASUGAlerta"></span>
</div>
<div class="claNLRATABSUGTOPO">
<button type="button" id="idBtnNLRETopo" class="voltar"><img src='/w_ucrg_nlequipe/resources/images/resposta.png' height='15' width='15'/></button>
</div>
</div>
</div>
</div><!--  idArtNLREExtra -->
<!-- --------------%%%%%%%%%%%%%%%---------------00-----TABELA DE TIMESHEETS DETALHADOS---------------- -->

<div class="claTBNLREDETROTULO">
<div id="idDivRDSpinner"></div>
<label><font color='#004646' size='5' id="idH3NLREDETROT"></font></label>
</div>
<div id="idArtNLRADET" class="claComBorda">
<div class="claTBNLREDET">
<div style="height:650px;overflow-y: scroll;">
<table id="idTabNLRENLDET"></table>
</div>
</div>



</div><!-- com borda -->
</div><!--  fim do grid claGridNLRERateio ******************** -->

</div><!-- FIM DO FLUID -->

<!-- ------------------------------%%%%%%%%%%%%%%% DIALOG BOX TRANSFERÊNCIA DE FILE -->
<div id="idDivNLREAnula" class="row">
    <div class="col-md-6">
            <div class="claComBorda" style="background-color:white;padding:10px;box-shadow:5px 10px #0d544b;">
                <button id="idBtnNLRECANCELAR" class="CancelarTransf" title="Retoma para você a tarefa de fazer o rateio"><label><font size="3" color="#006262">CANCELAR TRANSFERÊNCIA</font></label></button>
                <br>
                <br>
                <span id="idSpaNLREAnulaFile"></span>
            <span id="idSpaNLREAnulaCaptador"></span>
                <p id="idSpaNLREAnulaTexto"></p>
                <button type="button" id="idBtnNLRETRFECHAR" class="FecharX float-right"><label><font color="#9d0000" size="2">FECHAR</font></label></button>
                <br>
                <span id="idSpaNLRETRAnulaAviso" style="font-size:80%;"></span>
            </div><!-- body -->
    </div>
</div>


<!-- %%%%%%%%%%%%% DIALOG ESPECIAL -->
<div id="idDivEspecial">
<div class="row">
<label class="col-md-11">AJUSTE DO VALOR LÍQUIDO/JOB</label>
<label class="col-md-1" style="text-align:right;"><button type="button" id="idBtnEspecialFechar" class="btn btn-sm" title="Fecha esta janela sem alterar dados">x</button>
</label>
</div>
<div class="row">
<label class="col-md-2" >Fatura
<span id="idSpaEspFatura" class="form-control"></span>
</label>
<label class="col-md-2" >Caso
<span id="idSpaEspCaso" class="form-control"></span>
</label>
<label class="col-md-1" >Escr.
<span id="idSpaEspEscritorio" class="form-control"></span>
</label>
<label class="col-md-3" >Recebimento
<span id="idSpaEspReceb" class="form-control"></span>
</label>
<label class="col-md-4" >Novo Líquido
<input type="number" id="idNumEspLiquido" class="form-control" step="any" style="text-align:right;">
</label>
</div>
<div class="row">
<label class="col-md-2" ><br>
<button type="button" id="idBtnEspSalvar" class="btn btn-warning">Salvar</button>
</label>
</div>
<div class="row">
<label class="col-md-5" >
Último editor
<span id="idSpaEspUltimo" class="form-control" style="font-size:70%;"></span>
</label>
<label class="col-md-3" >
Data
<span id="idSpaEspData" class="form-control" style="font-size:70%;"></span>
</label>
<label class="col-md-2"><br>
<button type="button" id="idBtnEspecialReset" class="btn btn-danger" title="Anula a situação especial do valor líquido">Reset</button>
</label>
</div>
</div><!-- especial -->


<!-- %%%%%%%%%%%%% TRANSFERÊNCIA DE FATURA PARCIALMENTE %%%%%%%%%%% -->
<div id="idDivNLTRANSF" style="padding:10px;">
<div class="row">
<h3 class="col-md-11">TRANSFERÊNCIA PARCIAL DE FATURA</h3>
<label class="col-md-1" style="text-align:right;"><button type="button" id="idBtnNLTRANSFFechar" class="btn btn-sm" title="Fecha esta janela">x</button>
</label>
</div>
<div class="row">
<label class="col-md-2" >Fatura
<span id="idSpaNLTRANSFFatura" class="form-control"></span>
</label>
<label class="col-md-2" >Caso
<span id="idSpaNLTRANSFCaso" class="form-control"></span>
</label>
<label class="col-md-1" >Escr.
<span id="idSpaNLTRANSFEscritorio" class="form-control"></span>
</label>
<label class="col-md-3" >Recebimento
<span id="idSpaNLTRANSFReceb" class="form-control"></span>
</label>
<label class="col-md-3" >Bruto
<span id="idSpaNLTRANSFBruto" class="form-control"></span>
</label>
<label class="col-md-1" >Captador
<span id="idSpaNLTRANSFCap" class="form-control"></span>
</label>
</div>
<div class="row">
<label class="col-md-4">Transferir para
<select id="idSelNLTRANSFBenef" class="form-control"></select>
</label>
<label class="col-md-2">Percentual
<input type="number" id="idNumNLTRANSFPerc" class="form-control" step="any">
</label>
<label class="col-md-2"><br>
<button type="button" id="idBtnNLTRansfAdd" class="btn btn-info">Adicionar</button>
</label>
<label class="col-md-2">Falta atribuir (%)<br>
<span id="idSpaNLTRANSFJaA" class="form-control">100</span>
</label>
<label class="col-md-2">Resíduo<br>
<span id="idSpaNLTRANSFRes" class="form-control"></span>
</label>
</div>
<div class="row">
<table id="idTabNLTRANSFFeito"></table>
</div>
<div class="row">
<label class="col-md-2" ><br>
<button type="button" id="idBtnNLTRANSFSalvar" class="btn btn-warning">Salvar os percentuais</button>
</label>
<label class="col-md-2" ><br>
<button type="button" id="idBtnNLTRANSFReset" class="btn btn-danger" title="Anula todas as atribuições para esta fatura">Reset</button>
</label>
<label class="col-md-6" ><br>
<span id="idSpaNLTRANSFAviso"></span>
</label>
</div>
</div>

</div><!-- TRANSF PARCIAL DE FATURA -->
<!-- ------------ %%%%%%%%%%%%%%%%%%%%%%%%%%%% INPUTS HIDDEN -->
<article id="idArtNLREDHidden">
fat<input type="text" id="idHidNLREFaturaSelecionada">
escr<input type="text" id="idHidNLREEscritorioSelecionado">
job da linha<input type="text" id="idHidNLREJobSelecionado">
file<input type="text" id="idHidNLREFileSelecionado">
receb<input type="text" id="idHidNLRERecebSelecionado">
cap da nota<input type="text" id="idHidNLREBPSelecionado">
cliente da nota<input type="text" id="idHidNLREClienteSelecionado">
bp na máquina<input type="text" id="idHidNLREBPNaMaquina">

</article>
<!-- -----------%%%%%%%%%%%%%%%%% ÁREA DO ADMIN -->
<hr>
<div class="container-fluid">
<button type="button" id="idBtnAdmFecharGrupoJobExec" class="FecharadmJobExec"><label><font color="#750000" size="5">X</font></label></button>
<button type="button" id="idBtnAdmGrupoJobExec" class="admJobExec" title="O nome do grupo é 'job_execucao'"><label><font color="#003e3e" size="3">Administradores Job Execução</font></label></button>
<br>
<br>


<div class="grupoAdminJobExec">
<div id="idDivBlocoAdmin">
<label><font color="#003e3e" size="6" title="O nome do grupo é 'job_execucao'">Área dos Administradores do Grupo Job Execução</font></label>
<div class="claGridRateiosFeitos">
<div class="claRTTit">
<h3>PESQUISANDO RATEIOS JÁ FEITOS</h3>
</div>
<div class="claRTDataInicial">
<label>Data Inicial do Pagamento
<input type="date" id="idDatRTInicial" class="form-control">
</label>
</div>
<div class="claRTDataFinal">
<label>Data Final do Pagamento
<input type="date" id="idDatRTFinal" class="form-control">
</label>
</div>
<div class="claRTBP">
<label>
<select id="idSelRTBP" class="form-control"></select>
</label>
</div>
<div class="claRTBtn">
<label><br>
<button type="button" id="idBtnRTPesq" class="btn btn-info">Pesquisar</button>
</label>
</div>
<div class="claRTTab">
<div style="margin-bottom: 10px;height: 300px;overflow-y: scroll;">
<table id="idTabRTRateio"></table>
</div>
</div>
<div class="claRTRotuloTab">
<h4>RESUMO GERAL DOS VALORES DOS RATEIOS FEITOS ACIMA</h4>
</div>
<div class="claRTPeriodo">
<span id="idSpaRTPeriodo"></span>
</div>
<div class="claRTCSV">
<p id="idPRTExportarCSV"></p>
</div>
<div class="claRTResumo">
<div style="margin-bottom: 10px;height: 300px;overflow-y: scroll;">
<table id="idTabRTResumo"></table>
</div>
</div>
<div class="claRTAmostraTitulo">
<span class="form-control">CONSOLIDADO DE NOTAS EMITIDAS NO PERÍODO DE TODOS OS CAPTADORES (EM DESENVOLVIMENTO)</span>
</div>
<div class="claRTAAmostra">
<div style="margin-bottom: 10px;height: 300px;overflow-y: scroll;">
<table id="idTabRTAmostra"></table>
</div>
</div>
</div><!-- claGridRateiosFeitos -->
<div class="claDivGridAdmin">
<!-- 
<div class="claAdmBP">
<label><font color="#003e3e" size="3">Selecione um BP</font>
<select id="idSelNLREEmissores" class="form-control"></select>
</label>
</div>

<div class="claComBorda">

<div class="claAdmData">
<label><font color="#003e3e" size="3">Data para atualizar os files substitutos do captador UCRG</font>
<input type="date" id="idDatNLREAdmin" class="form-control" title="Os files têm seu captador móvel, que pode variar ao logo dos meses do ano. Indicando a data, já fica pronto para ser listado naquele período">
</label>
</div>

<div class="claAdmOper">
<br>
<label>
<input type="radio" name="namRadNLREOperacao" value="1" checked><font color="#003e3e" size="3">Atualizar todos</font>
</label>
<br>
<label>
<input type="radio" name="namRadNLREOperacao" value="2"><font color="#003e3e" size="3">Atualizar um file</font>
</label>
</div>
<br>
<div class="claAdmBtn">
<button type="button" id="idBtnNLREAdmin" class="AttListaCaptador" title="Este botão configura o controle para que as notas (cujo file tem captador UCRG) sejam listadas para os bps emissores">Atualiza lista de captador UCRG <img src='/w_ucrg_nlequipe/resources/images/circular.png' height='20' width='20'/></button>
</div>

</div>
<div class="claComBorda">

<div class="claAdmSubBtn">
<button type="button" id="idBtnAdmSubExecuta" class="Pesquisa">Mostrar a lista de substitutos em que o BP acima é Captador<img src='/w_ucrg_nlequipe/resources/images/magnifying-glass.png' height='30' width='30'/></button> 
</div>

<div class="claAdmSubTab">
<table id="idTabAdmSubSubs"></table>
</div>
-->
</div>

</div>
<!-- ***** BLOCO EM QUE O ADMINISTRADOR TROCA O VALOR DO BRUTO E RECALCULA LIQ/JOB -->
<!-- às vezes o valor bruto está errado, tal como proveniente de nota de despesa, por exemplo, que deve ser zerada -->
<div class="claGridAdmBruto">
<div class="claBrutoTitulo">
<label>AJUSTE DO VALOR BRUTO/LIQ/JOB DA NOTA PARA APARECER PARA O BP CORRETAMENTE</label>
</div>
<div class="claBrutoFatura">
<label>Fatura
<input type="text" id="idTxtBrutoFatura" class="form-control" >
</label>
</div>
<div class="claBrutoCaso">
<label>Caso
<input type="text" id="idTxtBrutoCaso" class="form-control">
</label>
</div>
<div class="claBrutoEscr">
<label>Escritório<br>
<select id="idSelBrutoEscritorio" class="form-select">
<option value="1" title="1" selected>RJ</option>
<option value="2" title="2">SP</option>
</select>
</label>
</div>
<div class="claBrutoReceb">
<label>Recebimento
<input type="date" id="idDatBrutoReceb" class="form-control">
</label>
</div>
<div class="claBrutoBruto">
<label>Novo Bruto
<input type="number" id="idNumBrutoBruto" class="form-control" step="any" style="text-align:right;">
</label>
</div>
<div class="claBrutoLiq">
<labe>Líquido
<span id="idSpaBrutoLiquido" class="form-control"  style="text-align:right;"></span>
</label>
</div>
<div class="claBrutoJob">
<labe>Job
<span id="idSpaBrutoJob" class="form-control"  style="text-align:right;"></span>
</label>
</div>
<div class="claBrutoSalvar">
<label><br>
<button type="button" id="idBtnBrutoSalvar" class="btn btn-warning">Salvar</button>
</label>
</div>
<div class="claBrutoReset">
<label><br>
<button type="button" id="idBtnBrutoReset" class="btn btn-danger" title="Cancela qualquer alteração de bruto na fatura">Reset</button>
</label>
</div>
<div class="claBrutoVerTabela">
<label><br>
<button type="button" id="idBtnBrutoVerTabela" class="btn btn-info" title="Lista os brutos alterados para a data do pagamento informada na pesquisa no alto da página (Não a data nesta seção)">Listar Brutos na data do pagamento</button>
</label>
</div>
<div class="claBrutoAviso">
<span id="idSpaBrutoAviso"></span>
</div>
<div class="claBrutoTabela">
<table id="idTabBrutoTabela"></table>
</div>
</div><!-- grid Bruto -->
<!-- ******************** TABELA DE CHEFES DE ESTAGIÁRIOS ********* -->
<div class="gridAdmChefes">
<div class="claAdmCTitulo">
<label title="As UTs dos estagiários vão para seus chefes. Este quadro faz a manutenção da relação entre estagiários e chefes">Apropriação de UTs de estagiários por seus chefes - Pesquisa/Alteração/Inserção</label>
</div>
<div class="claAdmCBotaoAtualiza">
<button type="button" id="idBtnAdmCCarregar" class="btn btn-info">Atualizar a lista</button>
</div>
<div class="claAdmCTabela">
<div style="height: 300px;overflow-y: scroll;">
<table id="idTabAdmCLista" border="1"></table>
</div>
</div>
<div class="claAdmCAdv">
<label>Estagiários
<select id="idSelAdmCEst" class="form-control"></select>
</label>
<label>Advogados
<select id="idSelAdmCChefe" class="form-control"></select>
</label>
<button type="button" id="idBtnAdmCUpdate" class="btn btn-warning">Atualizar relação</button>
<br>
<span id="idSpaAdmCAviso"></span>
</div>
</div><!--  gridAdmChefes -->
<!-- ********************** AQUI FAZ TRANSFERÊNCIA DE VALOR DE FATURA (NÃO O FILE) -->
<div class="claGridTValor">
<div class="claTValorTitulo">
<h2>Relação de Faturas que foram transferidas para outro BP (não o file)</h2>
</div>
<div class="claTValorBP">
<label>Sigla do Captador
<input type="text" id="idTxtTValorBP" class="form-control">
</label>
</div>
<div class="claTValorFatura">
<label>Fatura
<input type="text" id="idTxtTValorFatura" class="form-control">
</label>
</div>
<div class="claTValorPasta">
<label>Pasta
<input type="text" id="idTxtTValorPasta" class="form-control">
</input>
</div>
<div class="claTValorEsc">
<label>Escritório
<select id="idSelTValorEscritorio" class="form-control">
<option value="-1" title="-1" selected>...</option>
<option value="1" title="1">RJ</option>
<option value="2" title="2">SP</option>
</select>
</label>
</div>
<div class="claTValorRecebInicial">
<label>
Data Inicial do Recebimento
<input type="date" id="idDatTValorRecebInicial" class="form-control">
</label>
</div>
<div class="claTValorRecebFinal">
<label>
Data Final do Recebimento
<input type="date" id="idDatTValorRecebFinal" class="form-control">
</label>
</div>
<div class="claTValorPesq">
<label><br>
<button type="button" id="idBtnTValorPesquisar" class="btn btn-info">Pesquisar</button>
</label>
</div>
<div class="claTValorTabela">
<table id="idTabTValorTabela"></table>
</div>
<div class="claTValorReset">
<label><br>
<button type="button" id="idBtnTValorReset" class="btn btn-danger" title="Anula a linha selecionada pelos campos informados">Reset</button>
</label>
</div>
</div><!-- claGridTValor -->
</div><!-- grupoAdminJobExec -->
</div><!-- container fluid admin -->
<!-- </div> área de teste -->
<button type="button" id="idBtnNLRETeste">x</button>
<!-- 
<select id="idSelNLRETeste"></select>
<input type="file" id="idFilNLRETeste">
-->
<!-- <span id="idSpaRotuloNLRE" style="font-size:70%;">Projeto: Diversos /Widget: w_ucrg_nlequipe</span> -->
</div><!-- container -->
</div><!-- MAIOR -->

