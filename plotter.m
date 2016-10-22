function [  ] = plotter(x,y,x_label,y_label,format,filename)
plot(x,y,format)
xlabel(x_label);
ylabel(y_label);
print(filename, '-dpng');
end

