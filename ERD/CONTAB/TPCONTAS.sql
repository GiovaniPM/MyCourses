DELETE FROM [TPCONTAS];
INSERT INTO [TPCONTAS] ([TIPOCONTA], [DESC], [USER], [PROG], [DATA], [HORA]) VALUES ('A', 'ANALITICA', 'SQL', 'SQL', date('now'), time('now'));
INSERT INTO [TPCONTAS] ([TIPOCONTA], [DESC], [USER], [PROG], [DATA], [HORA]) VALUES ('S', 'SINTETICA', 'SQL', 'SQL', date('now'), time('now'));
