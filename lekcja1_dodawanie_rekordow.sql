# Zadanie 1
INSERT into studenci(ImieStudenta) VALUES("Angel");

UPDATE studenci Set NazwiskoStudenta = (SELECT NazwiskoStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
AdresStudenta = (SELECT AdresStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
MiastoStudenta = (SELECT MiastoStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
StanZamStudenta = (SELECT StanZamStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
KodPocztowyStudenta = (SELECT KodPocztowyStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
NumKierStudenta = (SELECT NumKierStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
TelefonStudenta = (SELECT TelefonStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
DataUrodzStudenta = (SELECT DataUrodzStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
PlecStudenta = "K",
StanCywilnyStudenta = (SELECT StanCywilnyStudenta FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
KierunekStudiow = (SELECT KierunekStudiow FROM studenci WHERE NazwiskoStudenta = "Kennedy" AND ImieStudenta = "John"),
IDStudenta = (SELECT MAX(studenci.IDStudenta) FROM studenci) + 1
WHERE IDStudenta = 0;


# Zadanie 2
INSERT INTO klienci (ImieKlienta, NazwiskoKlienta, AdresKlienta, MiastoKlienta, StanZamKlienta, KodPocztowyKlienta, TelefonKlienta)
SELECT agenci.ImieAgenta, agenci.NazwiskoAgenta, agenci.AdresAgenta, agenci.MiastoAgenta, agenci.StanZamAgenta, agenci.KodPocztowyAgenta, agenci.TelefonAgenta
FROM agenci
WHERE agenci.ImieAgenta = "Marianne" AND agenci.NazwiskoAgenta = "Wier";

UPDATE klienci SET IDKlienta = (SELECT MAX(IDKlienta) FROM klienci) + 1
WHERE IDKlienta = 0;
