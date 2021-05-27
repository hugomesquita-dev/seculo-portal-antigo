---- TABELA DE WIDGET
--DROP TABLE BD_SICA.WIDGET
/
--CRIANDO A TABELA PESQ_SATISFACAO_EVENTO
CREATE TABLE BD_SICA.WIDGET
(
    CD_WIDGET   NUMBER NOT NULL,
    NM_WIDGET   VARCHAR2(200),
    DESC_WIDGET VARCHAR2(250),
    TIPO_WIDGET CHAR(1)
)
/
--COMENTARIO
COMMENT ON COLUMN BD_SICA.WIDGET.TIPO_WIDGET IS 'A - ALUNO / P - PROFESSOR / R - RESPONSAVEL / C - COLABORADOR / G - GENERICO ';
/
--PERMISSAO
GRANT DELETE ON BD_SICA.WIDGET TO SECULOWEB
/
GRANT INSERT ON BD_SICA.WIDGET TO SECULOWEB
/
GRANT SELECT ON BD_SICA.WIDGET TO SECULOWEB
/
GRANT UPDATE ON BD_SICA.WIDGET TO SECULOWEB
/
--DROP SEQUENCE SEQ_CD_LINK;
/
CREATE SEQUENCE SICA_SICA.SEQ_CD_WIDGET
  INCREMENT BY 1
  START WITH 5
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  NOCYCLE
  ORDER
  NOCACHE
/
DROP TRIGGER Z_SEQ_CD_WIDGET;
/
-- TRIGGER FOR TABLE
CREATE TRIGGER Z_SEQ_CD_WIDGET
 BEFORE
  INSERT
 ON SICA_SICA.WIDGET
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
    SELECT  SICA_SICA.SEQ_CD_WIDGET.NEXTVAL
    INTO    :NEW.CD_LINK
    FROM    DUAL;
END;
/

---- TABELA DE WIDGET USUARIO
DROP TABLE BD_SICA.WIDGET_USU
/
--CRIANDO A TABELA PESQ_SATISFACAO_EVENTO
CREATE TABLE BD_SICA.WIDGET_USU
(
    CD_WIDGET_USU   NUMBER NOT NULL,
    CD_WIDGET NUMBER,
    CD_USUARIO NUMBER,
    POSICAO  NUMBER
)
/
--COMENTARIO
COMMENT ON COLUMN BD_SICA.WIDGET_USU.POSICAO IS 'DE 1 A 6 PARA POSICIONAR NA TELA';
/
--PERMISSAO
GRANT DELETE ON BD_SICA.WIDGET_USU TO SECULOWEB
/
GRANT INSERT ON BD_SICA.WIDGET_USU TO SECULOWEB
/
GRANT SELECT ON BD_SICA.WIDGET_USU TO SECULOWEB
/
GRANT UPDATE ON BD_SICA.WIDGET_USU TO SECULOWEB
/
--DROP SEQUENCE SEQ_CD_LINK;
/
CREATE SEQUENCE SICA_SICA.SEQ_CD_WIDGET_USU
  INCREMENT BY 1
  START WITH 5
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  NOCYCLE
  ORDER
  NOCACHE
/
DROP TRIGGER Z_SEQ_CD_WIDGET_USU;
/
-- TRIGGER FOR TABLE
CREATE TRIGGER Z_SEQ_CD_WIDGET_USU
 BEFORE
  INSERT
 ON SICA_SICA.WIDGET_USU
REFERENCING NEW AS NEW OLD AS OLD
 FOR EACH ROW
BEGIN
    SELECT  SICA_SICA.SEQ_CD_WIDGET_USU.NEXTVAL
    INTO    :NEW.CD_LINK
    FROM    DUAL;
END;
/







