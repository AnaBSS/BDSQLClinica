CREATE DATABASE aulajoin
GO
USE aulajoin
 
CREATE TABLE materias(
id		INT	IDENTITY	NOT NULL,
nome		VARCHAR(100),
carga_horaria	INT
PRIMARY KEY (id))
 
INSERT INTO materias VALUES
('Arquitetura e Organiza��o de Computadores', 80),
('Banco de Dados', 80),
('Laboratorio de Hardware', 40),
('Sistemas Operacionais I', 80)
 
CREATE TABLE avaliacoes(
id	INT IDENTITY(100001,1),
tipo	VARCHAR(10),
peso	DECIMAL(7,2)
PRIMARY KEY (id))
 
INSERT INTO avaliacoes VALUES
('P1',0.3),
('P2',0.5),
('T',0.2)
 
CREATE TABLE alunos(
ra	CHAR(10) NOT NULL,
nome	VARCHAR(100)
PRIMARY KEY (ra))
 
 
INSERT INTO alunos VALUES
('1520532245','BRUNO STURMER'),
('1520167733','BRUNO SUTANI BARROS CARDOSO'),
('1520450087','BRUNO TAVARE DA SILVA'),
('1520468563','BRUNO TAVARES DOS SANTOS'),
('1520206380','BRUNO TEIXEIRA LACK DIAS'),
('1520548699','BRUNO TEIXEIRA LOPES'),
('1520662246','BRUNO TODARO TAVEIRA LEITE'),
('1520082428','BRUNO TRICARICO BARCELLOS'),
('1520592132','BRUNO TROPIA MAROTTA TEIXEIRA DOS SANTOS'),
('1520824939','BRUNO VALIM MENECUCCI'),
('1520005350','BRUNO VENCESLAU DE SANTANA PEREIRA'),
('1520816855','BRUNO VERAS FERNANDES DINIS'),
('1520716052','BRUNO VERAS REIS'),
('1520450516','BRUNO VIANA ARMAROLI FONTES'),
('1520627823','BRUNO VIANNA DE OLIVEIRA'),
('1520562896','BRUNO VICTOR BARBOSA LEONCIO CAMPOS'),
('1520681844','BRUNO VIEIRA CAMPOS LOURENCO'),
('1520540582','BRUNO VIEIRA PROVETTI'),
('1520752636','BRUNO VILHENA DE ANDRADE VELASCO'),
('1520818971','BRUNO VILLA DE SANTANA'),
('1520812833','BRUNO VILLAR DE OLIVEIRA'),
('1520707274','BRUNO VINICIUS CASTELLO BRANCO'),
('1520363303','BRUNO VINICIUS DIAS DE OLIVEIRA'),
('1520634234','BRUNO VON PRESSENTIN DE SOUZA'),
('1520816570','BRUNO WELLAUSEN CANARIO'),
('1520182007','BRUNO YOSHIAKE NAKAHATA'),
('1520805500','BRUNO YURI OLIVEIRA CARVALHAES'),
('1520153163','BRUNO ZEITOUNE'),
('1520575432','BRYAN AGUIAR PENNA MATSUDA'),
('1520016727','BRYAN DA SILVA DUARTE'),
('1520227981','BRYAN DE AZEVEDO SENRA'),
('1520453400','BRYAN DOS REIS RAMALHO DE QUEIROZ'),
('1520252978','BRYAN ESTEVES BEZERRA'),
('1520432640','BRYAN GOMES BARBOSA COSTA'),
('1520595840','BRYAN MEDEIROS DA COSTA E SILVA'),
('1520452071','BRYAN MIRANDA DE OLIVEIRA'),
('1520291736','BRYAN RODRIGUES LIMA'),
('1520771436','BRYAN SANTOS'),
('1520544090','BRYAN SILVA SUHETT DO NASCIMENTO'),
('1520716508','BRYAN THIAGO ZACHARIAS DE MARCELO'),
('1520545150','BRYAN VARGAS NOGUEIRA'),
('1520212909','BYANCA DE ALMEIDA NEVES'),
('1520077335','BYANCA MARIA SILVEIRA DA CUNHA'),
('1520069480','BYANCA NICOLLY DUARTE BUENO'),
('1520742517','BYANKA KAROLYNNE CUTRIM SOARES'),
('1520386370','CACIANO CESAR BENINCA CUQUETTO'),
('1520685289','CAETANO DA SILVA LOUREIRO LOPES'),
('1520209746','CAHIO FREITAS FORTUNATO'),
('1520241526','CAMILA DOS REIS TOME AGUIAR'),
('1520053436','CAMILA DOS SANTOS BARROS'),
('1520444583','CAMILA DOS SANTOS BRAZ SALDANHA'),
('1520245726','CAMILA DOS SANTOS DE MELLO'),
('1520426593','CAMILA DOS SANTOS LOPES MOREIRA'),
('1520248148','CAMILA DOS SANTOS SILVA'),
('1520446667','CAMILA DUARTE BASSO'),
('1520256817','CAMILA EDUARDA ARANGATI'),
('1520479042','CAMILA EUDOXIA PINTO DOS SANTOS'),
('1520668538','CAMILA FALCAO OLIVEIRA DOS SANTOS'),
('1520609884','CAMILA FALCOEIRAS TRINDADE DOS SANTOS'),
('1520484852','CAMILA FARIA LIMA'),
('1520126220','CAMILA FARIAS BRAGA'),
('1520179596','CAMILA FEITOSA FERREIRA'),
('1520353880','CAMILA FERNANDA ALVES DE ALMEIDA'),
('1520084641','CAMILA FERNANDA TERHORST TOLPHO'),
('1520404387','CAMILA FERNANDES DE SOUZA'),
('1520801114','CAMILA FERREIRA'),
('1520258828','CAMILA FERREIRA DE PAULA'),
('1520424256','CAMILA FERREIRA DE VASCONCELLOS'),
('1520355580','CAMILA FERREIRA FERNANDEZ'),
('1520369255','CAMILA FERREIRA RIBEIRO DE SIQUEIRA'),
('1520225580','CAMILA FONSECA DANTAS'),
('1520411510','CAMILA FONSECA MARINHEIRO'),
('1520144717','CAMILA FRANCISCO DE OLIVEIRA'),
('1520639716','CAMILA FRANCISCO DE SOUZA'),
('1520704992','CAMILA GABRIELA CARRARA'),
('1520251661','CAMILA GARCIA'),
('1520385013','CAMILA GARCIA ALVES'),
('1520585900','CAMILA GATTI RAULINO'),
('1520123655','CAMILA GISELE ARAUJO DA COSTA'),
('1520108630','CAMILA GOMES DA LUZ'),
('1520454708','CAMILA GOMES DE SOUZA'),
('1520655703','CAMILA GOMES MONTEIRO'),
('1520486324','CAMILA GONCALVES DA COSTA'),
('1520454210','CAMILA GONCALVES DE ANDRADE'),
('1520016450','CAMILA GONCALVES FLORES'),
('1520263805','CAMILA GONCALVES MONTEIRO'),
('1520064128','CAMILA GONCALVES SANTOS'),
('1520709307','CAMILA GONCALVES ZGERSKI DE CARVALHO'),
('1520396163','CAMILA GONZAGA SEIXAS'),
('1520328036','CAMILA GONZALEZ RODRIGUEZ MELLO'),
('1520190190','CAMILA GOULART MENDES PINHEIRO'),
('1520627300','CAMILA GOUVEA FACURE'),
('1520639155','CAMILA GREGORIO DE PAIVA'),
('1520065876','CAMILA GUEDES PEREIRA'),
('1520680864','CAMILA GUIMARAES DA COSTA'),
('1520155271','CAMILA GUSMAO HERMINIO MARTINS'),
('1520565089','CAMILA HANA DIAS CORDEIRO'),
('1520281234','CAMILA HO ARAUJO'),
('1520327447','CAMILA HOFFMAN DA SILVA SILVESTRE'),
('1520732953','CAMILA ICHII COSTA'),
('1520043848','CAMILA IGLESIAS FONTOURA NEGREIRA'),
('1520249144','CAMILA JORDAO RABHA NASCIMENTO'),
('1520648740','CAMILA JOVIANO GOMES'),
('1520734735','CAMILA JUDITH SOUSA SAN LUCAS'),
('1520238410','CAMILA KAWAKAMI AVILA'),
('1520273681','CAMILA KIRSCHNER GONCALVES BRANDAO'),
('1520182597','CAMILA LACERDA DE MORAES'),
('1520656360','CAMILA LACERDA MARINHO'),
('1520178956','CAMILA LEITE BARBOSA'),
('1520689110','CAMILA LEONARDO MORADA'),
('1520007930','CAMILA LIMA BRANDAO BAPTISTA'),
('1520652054','CAMILA LIMA SILVA'),
('1520548150','CAMILA LIMA TEIXEIRA'),
('1520679254','CAMILA LIS MONTEIRO MARQUES DUARTE'),
('1520100116','CAMILA LISBOA'),
('1520297670','CAMILA LOBO RODRIGUES DA SILVA')
 
CREATE TABLE alunomateria(
ra_aluno	CHAR(10) NOT NULL,
id_materia	INT NOT NULL
PRIMARY KEY (ra_aluno, id_materia)
FOREIGN KEY (ra_aluno) REFERENCES alunos (ra),
FOREIGN KEY (id_materia) REFERENCES materias (id))
 
INSERT INTO alunomateria VALUES
('1520532245',1),
('1520167733',1),
('1520450087',1),
('1520468563',1),
('1520206380',1),
('1520548699',1),
('1520662246',1),
('1520082428',1),
('1520592132',1),
('1520824939',1),
('1520005350',1),
('1520816855',1),
('1520716052',1),
('1520450516',1),
('1520627823',1),
('1520562896',1),
('1520681844',1),
('1520540582',1),
('1520752636',1),
('1520818971',1),
('1520812833',1),
('1520707274',1),
('1520363303',1),
('1520634234',1),
('1520816570',1),
('1520182007',1),
('1520805500',1),
('1520153163',1),
('1520575432',1),
('1520016727',1),
('1520227981',2),
('1520453400',2),
('1520252978',2),
('1520432640',2),
('1520595840',2),
('1520452071',2),
('1520291736',2),
('1520771436',2),
('1520544090',2),
('1520716508',2),
('1520545150',2),
('1520212909',2),
('1520077335',2),
('1520069480',2),
('1520742517',2),
('1520386370',2),
('1520685289',2),
('1520209746',2),
('1520241526',2),
('1520053436',2),
('1520444583',2),
('1520245726',2),
('1520426593',2),
('1520248148',2),
('1520446667',2),
('1520256817',2),
('1520479042',2),
('1520668538',2),
('1520609884',2),
('1520484852',2),
('1520126220',2),
('1520179596',2),
('1520353880',2),
('1520084641',2),
('1520404387',2),
('1520801114',2),
('1520258828',2),
('1520424256',2),
('1520355580',2),
('1520369255',2),
('1520225580',3),
('1520411510',3),
('1520144717',3),
('1520639716',3),
('1520704992',3),
('1520251661',3),
('1520385013',3),
('1520585900',3),
('1520123655',3),
('1520108630',3),
('1520454708',3),
('1520655703',3),
('1520486324',3),
('1520454210',3),
('1520016450',3),
('1520263805',3),
('1520064128',3),
('1520709307',3),
('1520396163',3),
('1520328036',3),
('1520190190',3),
('1520627300',3),
('1520639155',3),
('1520065876',3),
('1520680864',3),
('1520155271',3),
('1520565089',3),
('1520281234',3),
('1520327447',3)
 
CREATE TABLE notas(
ra_aluno		CHAR(10) NOT NULL,
id_materia		INT NOT NULL,
id_avaliacao	INT NOT NULL,
nota			DECIMAL(7,2)
PRIMARY KEY (ra_aluno, id_materia, id_avaliacao)
FOREIGN KEY (ra_aluno) REFERENCES alunos (ra),
FOREIGN KEY (id_materia) REFERENCES materias (id),
FOREIGN KEY (id_avaliacao) REFERENCES avaliacoes(id))
 
INSERT INTO notas VALUES
('1520532245',1,100001,5.0),
('1520167733',1,100001,1.9),
('1520450087',1,100001,0.1),
('1520468563',1,100001,4.4),
('1520206380',1,100001,5.1),
('1520548699',1,100001,4.8),
('1520662246',1,100001,1.3),
('1520082428',1,100001,1.6),
('1520592132',1,100001,5.9),
('1520824939',1,100001,1.3),
('1520005350',1,100001,4.0),
('1520816855',1,100001,1.7),
('1520716052',1,100001,3.3),
('1520450516',1,100001,2.4),
('1520627823',1,100001,7.7),
('1520562896',1,100001,4.7),
('1520681844',1,100001,8.6),
('1520540582',1,100001,1.4),
('1520752636',1,100001,5.0),
('1520818971',1,100001,5.3),
('1520812833',1,100001,0.1),
('1520707274',1,100001,5.3),
('1520363303',1,100001,7.3),
('1520634234',1,100001,6.1),
('1520816570',1,100001,0.9),
('1520182007',1,100001,1.0),
('1520805500',1,100001,7.5),
('1520153163',1,100001,2.1),
('1520575432',1,100001,7.9),
('1520016727',1,100001,8.9),
('1520227981',2,100001,8.0),
('1520453400',2,100001,9.0),
('1520252978',2,100001,2.5),
('1520432640',2,100001,5.2),
('1520595840',2,100001,8.6),
('1520452071',2,100001,8.7),
('1520291736',2,100001,3.6),
('1520771436',2,100001,6.3),
('1520544090',2,100001,2.8),
('1520716508',2,100001,1.5),
('1520545150',2,100001,7.0),
('1520212909',2,100001,4.2),
('1520077335',2,100001,1.5),
('1520069480',2,100001,1.8),
('1520742517',2,100001,8.8),
('1520386370',2,100001,9.6),
('1520685289',2,100001,4.4),
('1520209746',2,100001,8.9),
('1520241526',2,100001,3.1),
('1520053436',2,100001,2.5),
('1520444583',2,100001,5.9),
('1520245726',2,100001,7.4),
('1520426593',2,100001,3.9),
('1520248148',2,100001,1.5),
('1520446667',2,100001,2.6),
('1520256817',2,100001,5.2),
('1520479042',2,100001,7.7),
('1520668538',2,100001,6.2),
('1520609884',2,100001,7.6),
('1520484852',2,100001,0.4),
('1520126220',2,100001,9.2),
('1520179596',2,100001,9.7),
('1520353880',2,100001,5.7),
('1520084641',2,100001,3.7),
('1520404387',2,100001,6.5),
('1520801114',2,100001,0.2),
('1520258828',2,100001,9.5),
('1520424256',2,100001,3.6),
('1520355580',2,100001,6.1),
('1520369255',2,100001,4.7),
('1520225580',3,100001,4.5),
('1520411510',3,100001,0.9),
('1520144717',3,100001,6.7),
('1520639716',3,100001,6.4),
('1520704992',3,100001,5.3),
('1520251661',3,100001,5.5),
('1520385013',3,100001,9.9),
('1520585900',3,100001,4.0),
('1520123655',3,100001,8.8),
('1520108630',3,100001,7.0),
('1520454708',3,100001,6.7),
('1520655703',3,100001,1.1),
('1520486324',3,100001,3.4),
('1520454210',3,100001,0.7),
('1520016450',3,100001,0.0),
('1520263805',3,100001,9.7),
('1520064128',3,100001,8.4),
('1520709307',3,100001,0.8),
('1520396163',3,100001,8.8),
('1520328036',3,100001,5.8),
('1520190190',3,100001,0.3),
('1520627300',3,100001,2.7),
('1520639155',3,100001,3.5),
('1520065876',3,100001,4.0),
('1520680864',3,100001,2.3),
('1520155271',3,100001,4.4),
('1520565089',3,100001,3.2),
('1520281234',3,100001,7.4),
('1520327447',3,100001,8.3),
('1520532245',1,100002,5.6),
('1520167733',1,100002,4.2),
('1520450087',1,100002,0.2),
('1520468563',1,100002,0.4),
('1520206380',1,100002,4.1),
('1520548699',1,100002,9.6),
('1520662246',1,100002,5.3),
('1520082428',1,100002,4.9),
('1520592132',1,100002,5.2),
('1520824939',1,100002,9.2),
('1520005350',1,100002,1.8),
('1520816855',1,100002,4.1),
('1520716052',1,100002,7.1),
('1520450516',1,100002,3.5),
('1520627823',1,100002,3.6),
('1520562896',1,100002,7.1),
('1520681844',1,100002,3.0),
('1520540582',1,100002,6.6),
('1520752636',1,100002,6.4),
('1520818971',1,100002,7.2),
('1520812833',1,100002,7.1),
('1520707274',1,100002,0.5),
('1520363303',1,100002,3.4),
('1520634234',1,100002,9.0),
('1520816570',1,100002,2.8),
('1520182007',1,100002,7.2),
('1520805500',1,100002,9.9),
('1520153163',1,100002,1.8),
('1520575432',1,100002,1.0),
('1520016727',1,100002,8.7),
('1520227981',2,100002,3.6),
('1520453400',2,100002,7.7),
('1520252978',2,100002,4.1),
('1520432640',2,100002,1.0),
('1520595840',2,100002,3.4),
('1520452071',2,100002,5.6),
('1520291736',2,100002,1.0),
('1520771436',2,100002,6.6),
('1520544090',2,100002,7.1),
('1520716508',2,100002,0.0),
('1520545150',2,100002,1.9),
('1520212909',2,100002,3.9),
('1520077335',2,100002,5.6),
('1520069480',2,100002,0.1),
('1520742517',2,100002,3.7),
('1520386370',2,100002,6.0),
('1520685289',2,100002,3.2),
('1520209746',2,100002,8.2),
('1520241526',2,100002,9.8),
('1520053436',2,100002,9.2),
('1520444583',2,100002,0.9),
('1520245726',2,100002,3.6),
('1520426593',2,100002,1.0),
('1520248148',2,100002,1.1),
('1520446667',2,100002,0.2),
('1520256817',2,100002,5.0),
('1520479042',2,100002,2.9),
('1520668538',2,100002,4.2),
('1520609884',2,100002,1.4),
('1520484852',2,100002,5.8),
('1520126220',2,100002,4.2),
('1520179596',2,100002,1.2),
('1520353880',2,100002,8.7),
('1520084641',2,100002,5.9),
('1520404387',2,100002,8.6),
('1520801114',2,100002,8.6),
('1520258828',2,100002,9.9),
('1520424256',2,100002,2.9),
('1520355580',2,100002,3.9),
('1520369255',2,100002,5.2),
('1520225580',3,100002,3.9),
('1520411510',3,100002,2.6),
('1520144717',3,100002,8.6),
('1520639716',3,100002,0.3),
('1520704992',3,100002,8.6),
('1520251661',3,100002,3.3),
('1520385013',3,100002,3.3),
('1520585900',3,100002,0.2),
('1520123655',3,100002,3.3),
('1520108630',3,100002,1.5),
('1520454708',3,100002,3.1),
('1520655703',3,100002,7.5),
('1520486324',3,100002,8.4),
('1520454210',3,100002,3.7),
('1520016450',3,100002,7.1),
('1520263805',3,100002,6.9),
('1520064128',3,100002,0.7),
('1520709307',3,100002,5.1),
('1520396163',3,100002,0.8),
('1520328036',3,100002,2.5),
('1520190190',3,100002,2.3),
('1520627300',3,100002,0.6),
('1520639155',3,100002,9.5),
('1520065876',3,100002,8.4),
('1520680864',3,100002,0.4),
('1520155271',3,100002,2.8),
('1520565089',3,100002,2.5),
('1520281234',3,100002,1.8),
('1520327447',3,100002,9.6),
('1520532245',1,100003,3.3),
('1520167733',1,100003,0.7),
('1520450087',1,100003,2.5),
('1520468563',1,100003,2.9),
('1520206380',1,100003,9.7),
('1520548699',1,100003,5.6),
('1520662246',1,100003,6.2),
('1520082428',1,100003,4.2),
('1520592132',1,100003,6.3),
('1520824939',1,100003,8.9),
('1520005350',1,100003,2.6),
('1520816855',1,100003,2.8),
('1520716052',1,100003,0.6),
('1520450516',1,100003,3.8),
('1520627823',1,100003,1.2),
('1520562896',1,100003,0.1),
('1520681844',1,100003,2.7),
('1520540582',1,100003,6.0),
('1520752636',1,100003,7.5),
('1520818971',1,100003,4.0),
('1520812833',1,100003,5.1),
('1520707274',1,100003,2.8),
('1520363303',1,100003,2.2),
('1520634234',1,100003,6.6),
('1520816570',1,100003,5.9),
('1520182007',1,100003,5.5),
('1520805500',1,100003,8.7),
('1520153163',1,100003,6.0),
('1520575432',1,100003,7.7),
('1520016727',1,100003,8.3),
('1520227981',2,100003,1.4),
('1520453400',2,100003,1.5),
('1520252978',2,100003,2.6),
('1520432640',2,100003,1.2),
('1520595840',2,100003,1.7),
('1520452071',2,100003,6.1),
('1520291736',2,100003,8.5),
('1520771436',2,100003,0.3),
('1520544090',2,100003,9.5),
('1520716508',2,100003,4.9),
('1520545150',2,100003,0.7),
('1520212909',2,100003,7.2),
('1520077335',2,100003,3.7),
('1520069480',2,100003,2.6),
('1520742517',2,100003,6.9),
('1520386370',2,100003,9.6),
('1520685289',2,100003,3.7),
('1520209746',2,100003,5.2),
('1520241526',2,100003,2.9),
('1520053436',2,100003,4.3),
('1520444583',2,100003,6.5),
('1520245726',2,100003,6.3),
('1520426593',2,100003,3.3),
('1520248148',2,100003,0.3),
('1520446667',2,100003,5.6),
('1520256817',2,100003,4.0),
('1520479042',2,100003,2.0),
('1520668538',2,100003,0.6),
('1520609884',2,100003,9.9),
('1520484852',2,100003,2.2),
('1520126220',2,100003,8.0),
('1520179596',2,100003,4.9),
('1520353880',2,100003,4.1),
('1520084641',2,100003,6.9),
('1520404387',2,100003,2.8),
('1520801114',2,100003,2.9),
('1520258828',2,100003,6.9),
('1520424256',2,100003,3.9),
('1520355580',2,100003,2.4),
('1520369255',2,100003,0.1),
('1520225580',3,100003,4.4),
('1520411510',3,100003,9.2),
('1520144717',3,100003,9.0),
('1520639716',3,100003,6.2),
('1520704992',3,100003,9.0),
('1520251661',3,100003,3.0),
('1520385013',3,100003,3.0),
('1520585900',3,100003,8.7),
('1520123655',3,100003,6.3),
('1520108630',3,100003,0.9),
('1520454708',3,100003,7.9),
('1520655703',3,100003,0.3),
('1520486324',3,100003,3.1),
('1520454210',3,100003,0.0),
('1520016450',3,100003,9.2),
('1520263805',3,100003,0.4),
('1520064128',3,100003,1.9),
('1520709307',3,100003,8.7),
('1520396163',3,100003,5.2),
('1520328036',3,100003,2.1),
('1520190190',3,100003,9.0),
('1520627300',3,100003,2.5),
('1520639155',3,100003,3.6),
('1520065876',3,100003,9.0),
('1520680864',3,100003,2.2),
('1520155271',3,100003,1.9),
('1520565089',3,100003,9.5),
('1520281234',3,100003,4.7),
('1520327447',3,100003,8.4)

SELECT * FROM materias

SELECT * FROM avaliacoes

SELECT * FROM alunos

SELECT * FROM alunomateria

SELECT * FROM notas

 
--SQL 2
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra, 
	CASE WHEN (LEN(al.nome) >= 30)
		THEN SUBSTRING(al.nome, 1, 29)+'.'
		ELSE al.nome
	END AS nome, 
	mat.id AS id_materia, mat.nome AS nome_materia
FROM alunos al INNER JOIN alunomateria am
ON al.ra = am.ra_aluno
INNER JOIN materias mat
ON mat.id = am.id_materia
WHERE mat.nome LIKE 'Banco%'
ORDER BY al.nome ASC
 
--SQL 3
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra, 
	CASE WHEN (LEN(al.nome) >= 30)
		THEN SUBSTRING(al.nome, 1, 29)+'.'
		ELSE al.nome
	END AS nome, 
	mat.id AS id_materia, mat.nome AS nome_materia
FROM alunos al, alunomateria am, materias mat
WHERE al.ra = am.ra_aluno
	AND mat.id = am.id_materia
	AND mat.nome LIKE 'Lab%'
ORDER BY al.nome ASC
 
 

SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra, 
	CASE WHEN (LEN(al.nome) >= 30)
		THEN SUBSTRING(al.nome, 1, 29)+'.'
		ELSE al.nome
	END AS nome,
	av.tipo, av.peso, nt.nota,
	CAST(av.peso * nt.nota AS DECIMAL(4,1)) AS nota_peso
FROM alunos al, notas nt, materias mat, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome = 'Banco de Dados'
--	AND av.tipo = 'P1'
--ORDER BY av.tipo ASC, al.nome ASC--, av.tipo ASC
ORDER BY al.nome ASC, av.tipo ASC
 
 
-- Mat�rias que n�o tem notas cadastradas
SELECT mat.nome
FROM materias mat LEFT OUTER JOIN notas nt
ON mat.id = nt.id_materia
WHERE nt.id_materia IS NULL
 
SELECT mat.nome
FROM notas nt RIGHT OUTER JOIN materias mat
ON mat.id = nt.id_materia
WHERE nt.id_materia IS NULL
 
--Exercicios
--Mascara RA (9 digitos - ultimo digito)
 
-- Fazer uma consulta que retorne o RA mascarado e o 
--nome dos alunos que n�o est�o matriculados 
--em nenhuma mat�ria

SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra, 
	CASE WHEN (LEN(al.nome) >= 30)
		THEN SUBSTRING(al.nome, 1, 29)+'.'
		ELSE al.nome
	END AS nome
FROM alunos al LEFT OUTER JOIN alunomateria am
ON al.ra = am.ra_aluno
WHERE am.ra_aluno IS NULL
 
--Fazer uma consulta que retorne o RA mascarado, 
--o nome dos alunos, o nome da mat�ria, 
--a nota, o tipo da avalia��o, dos alunos que tiraram 
--Notas abaixo da m�dia(6.0) em P1 ou P2, 
--ordenados por mat�ria e nome do aluno

SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra, 
	CASE WHEN (LEN(al.nome) >= 30)
		THEN SUBSTRING(al.nome, 1, 29)+'.'
		ELSE al.nome
	END AS nome,
	mat.nome AS nome_materias, av.tipo, nt.nota
FROM alunos al, notas nt, materias mat, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND nt.nota < 6
	AND (av.tipo = 'P1' OR av.tipo = 'P2')
ORDER BY mat.nome ASC, al.nome ASC

---------------------------------------------------------------------------------
UPDATE materias
SET nome = 'Arquitetura e Organiza��o de Computadores'
WHERE id = 1
 
/*Fun��es de Agrega��o
SUM(), AVG(), COUNT(), MAX(), MIN() 
 
GROUP BY - Cl�usula de Agrega��o
HAVING - Filtro para Fun��es de Agrega��o
*/
 
 
--Consultar a m�dia das notas de cada avalia��o por mat�ria
--Select M�dia aritm�tica a partir da soma com filtro de Avalia��o e Mat�ria
SELECT mat.nome, av.tipo, AVG(nt.nota) AS media_notas
FROM notas nt, materias mat, avaliacoes av
WHERE mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
GROUP BY mat.nome, av.tipo
ORDER BY mat.nome ASC, av.tipo ASC

 
--Para 1 disciplina (Banco...)
SELECT av.tipo, AVG(nt.nota) AS media_notas
FROM notas nt, materias mat, avaliacoes av
WHERE mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome LIKE 'Banco%'
GROUP BY mat.nome, av.tipo
ORDER BY mat.nome ASC, av.tipo ASC
  
 
--Consultar o RA do aluno (mascarado), a nota final dos alunos, 
--de alguma mat�ria e uma coluna conceito 
--(aprovado caso nota >= 6, reprovado, caso contr�rio)
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra,
	av.tipo,
	(av.peso * nt.nota) AS nota_final
FROM alunos al, materias mat, notas nt, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome LIKE 'Banco%'
 
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra,
	CAST(SUM((av.peso * nt.nota)) AS DECIMAL(4,1)) AS nota_final,
	CASE WHEN (SUM((av.peso * nt.nota)) >= 6.0)
		THEN 'AP'
		ELSE 'RP'
	END AS conceito
FROM alunos al, materias mat, notas nt, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome LIKE 'Banco%'
GROUP BY al.ra
 
 
--Consultar nome da mat�ria e quantos alunos est�o matriculados
SELECT mat.nome, COUNT(al.ra) AS qtd_alunos
FROM alunos al, alunomateria am, materias mat
WHERE al.ra = am.ra_aluno
	AND mat.id = am.id_materia
GROUP BY mat.nome
 
 
--Consultar quantos alunos n�o est�o matriculados
SELECT COUNT(al.ra) AS qtd_nao_matriculados 
FROM alunos al LEFT OUTER JOIN alunomateria am
ON am.ra_aluno = al.ra
WHERE am.ra_aluno IS NULL
 
 
--Consultar quais alunos est�o aprovados em alguma mat�ria 
--(nota final >= 6,0)
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra,
	al.nome
FROM alunos al, materias mat, notas nt, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome LIKE 'Banco%'
GROUP BY al.ra, al.nome	
HAVING SUM((av.peso * nt.nota)) >= 6.0
ORDER BY al.nome

 
--Consultar quantos alunos est�o aprovados em alguma mat�ria
--(nota final >= 6,0)
SELECT COUNT(ra) AS qtd_aprovados
FROM alunos al
WHERE ra IN (
	SELECT al.ra
	FROM alunos al, materias mat, notas nt, avaliacoes av
	WHERE al.ra = nt.ra_aluno
		AND mat.id = nt.id_materia
		AND av.id = nt.id_avaliacao
		AND mat.nome LIKE 'Banco%'
	GROUP BY al.ra, al.nome	
	HAVING SUM((av.peso * nt.nota)) >= 6.0
)
 
 
--Consultar quantos alunos est�o reprovados em alguma mat�ria
--(nota final < 6,0)
SELECT COUNT(ra) AS qtd_reprovados
FROM alunos al
WHERE ra IN (
	SELECT al.ra
	FROM alunos al, materias mat, notas nt, avaliacoes av
	WHERE al.ra = nt.ra_aluno
		AND mat.id = nt.id_materia
		AND av.id = nt.id_avaliacao
		AND mat.nome LIKE 'Banco%'
	GROUP BY al.ra, al.nome	
	HAVING SUM((av.peso * nt.nota)) <= 6.0
)
 
--Ou
SELECT COUNT(ra) AS qtd_reprovados
FROM alunos al, alunomateria am, materias mat
WHERE al.ra = am.ra_aluno
	AND mat.id = am.id_materia
	AND mat.nome LIKE 'Banco%'
	AND al.ra NOT IN (
	SELECT al.ra
	FROM alunos al, materias mat, notas nt, avaliacoes av
	WHERE al.ra = nt.ra_aluno
		AND mat.id = nt.id_materia
		AND av.id = nt.id_avaliacao
		AND mat.nome LIKE 'Banco%'
	GROUP BY al.ra, al.nome	
	HAVING SUM((av.peso * nt.nota)) >= 6.0
)
 
 
--Consultar a maior e menor notas das avalia��es das mat�rias
SELECT mat.nome, av.tipo, MAX(nt.nota) AS maior_nota, MIN(nt.nota) AS menor_nota
FROM alunos al, notas nt, materias mat, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
GROUP BY mat.nome, av.tipo
ORDER BY mat.nome, av.tipo
 
 
--Retornar RA e nome do aluno, tipo da avalia��o e as 2 maiores notas
SELECT TOP 2 SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra,
	al.nome, mat.nome, av.tipo, nt.nota
FROM alunos al, notas nt, materias mat, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND mat.nome LIKE 'Banco%'
ORDER BY nt.nota DESC
 
--Exerc�cios de aula:
--1)
--Consultar a menor notas das avalia��es das mat�rias
--que n�o sejam zero
SELECT mat.nome, av.tipo, MIN(nt.nota) AS menor_nota
FROM alunos al, notas nt, materias mat, avaliacoes av
WHERE al.ra = nt.ra_aluno
	AND mat.id = nt.id_materia
	AND av.id = nt.id_avaliacao
	AND nt.nota > 0.00
GROUP BY mat.nome, av.tipo
ORDER BY mat.nome, av.tipo
 
--2)
--Fazer uma consulta que retorne o RA formatado e o nome dos 
--alunos que tem a menor nota da P1 de banco de dados
SELECT SUBSTRING(al.ra,1,9)+'-'+SUBSTRING(al.ra,10,1) AS ra,
	al.nome
FROM alunos al, notas nt
WHERE al.ra = nt.ra_aluno
	AND nt.nota IN (
		SELECT MIN(nt.nota)
		FROM notas nt, materias mat, avaliacoes av
		WHERE mat.id = nt.id_materia
			AND av.id = nt.id_avaliacao
			AND mat.nome LIKE 'Banco%'
			AND av.tipo = 'P1'
	)
