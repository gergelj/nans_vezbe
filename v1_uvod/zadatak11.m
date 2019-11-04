function [stocks] = zadatak11(years, totalStocks)

n = length(years);
total_years = sum(years);
unit_stock = totalStocks/total_years;
stocks = round(unit_stock.*years);

end