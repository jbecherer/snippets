snippet abc
	abc='abcdefghijklmnopqrst'
	for i = 1:(size(ax,1)*size(ax,2))
		text_corner(ax(i), abc(i), 4);
	end
	${1}
snippet %-
	%---------------------${1:Title}----------------------
	${2}
	
snippet ax
	[ax, ${1:~}] = create_axes(fig, ${2:n_rows}, ${3:n_colums}, 0);
	${4}
	
snippet ax41
	xl = ${1:time([1 end])};
	xT = ${2:time(1:round(diff(xl)/3):end)};
	ax(1) = axes('Position',[.1 .77 .75 .22]);
	ax(2) = axes('Position',[.1 .54 .75 .22]);
	ax(3) = axes('Position',[.1 .31 .75 .22]);
	ax(4) = axes('Position',[.1 .08 .75 .22]);
		set(ax(1),'XTIck',xT,'Xticklabel',[],'Xlim',xl,'box','on')
		set(ax(2),'XTIck',xT,'Xticklabel',[],'Xlim',xl,'box','on')
		set(ax(3),'XTIck',xT,'Xticklabel',[],'Xlim',xl,'box','on')
		set(ax(4),'XTIck',xT,'Xlim',xl,'box','on')
	${3}
snippet ax51c
	xl = ${1:time([1 end])};
	xT = ${2:time(1:round(diff(xl)/3):end)};
	 ax(1) = axes('Position',[.1 .79  .78 .16]);
	 ax(2) = axes('Position',[.1 .62 .78 .16]);
	 ax(3) = axes('Position',[.1 .45 .78 .16]);
	 ax(4) = axes('Position',[.1 .28 .78 .16]);
	 ax(5) = axes('Position',[.1 .11 .78 .16]);
	 axc(1) = axes('Position',[.89 .8  .01 .14]);
	 axc(2) = axes('Position',[.89 .63 .01 .14]);
	 axc(3) = axes('Position',[.89 .46 .01 .14]);
	 axc(4) = axes('Position',[.89 .29 .01 .14]);
	 axl = axes('Position',[.89 .12 .1 .14],'box','on','Xtick',[],'Ytick',[]);
	 set(ax(1),'XTIck',xT,'Xticklabel',[],'Xlim',xl)
	 set(ax(2),'XTIck',xT,'Xticklabel',[],'Xlim',xl)
	 set(ax(3),'XTIck',xT,'Xticklabel',[],'Xlim',xl)
	 set(ax(4),'XTIck',xT,'Xticklabel',[],'Xlim',xl)
	 set(ax(5),'XTIck',xT,'Xlim',xl)
	 ${3}
snippet butter
	[b,a] = butter(2, ${1:.1}, 'low');
	${2:X} = filtfilt(b ,a , ${3:X});
	${4}
snippet cc
	clear all;
	close all;
	${1}
snippet col
	col = get(groot,'DefaultAxesColorOrder');
	${1}
snippet contourf
	i = ${1:1};
	contourf(ax(i),X{i},Y{i},Z{i},cas{i});
		shading(ax(i),'flat');
		caxis(ax(i),ncl(i,:))
		ylabel(ax(i),'${2:y [km]}')
		ylabel(ax(i),'${3:day of year}')
	${4}
snippet date
	datetick(ax(a), 'keepticks');
	${1}
	
snippet multic
	load cmap;
		cmaps(1,:,:)=jet; cmaps(2,:,:)=cmap.plus_minus; cmaps(3,:,:)=cmap.hblvil;
		  cmaps(4,:,:)=cmap.hblvil;
		cl(1,:)=[23.1  23.8]; cl(2,:)=[-.1 .1]; cl(3,:)=[0 3]; cl(4,:)=[0 .05];
		nrcls(1)=30 ; nrcls(2)=30; nrcls(3)=30; nrcls(4)=30;
		clab={'\sigma [g kg^{-1}]','\sigma- <\sigma>_y [g kg^{-1}]', '\Phi [J m^{-3}]'...
		  , '|u*| [m s^{-1}]'};
	[ncmap, cas, ncl] = multicmap(cmaps,cl,nrcls,axc,clab,18);
		set(get(axc(2),'Ylabel'),'String',{ '\sigma- <\sigma>_y'})
		set(get(axc(3),'Ylabel'),'String',{ ' '; '\Phi [J m^{-3}]'})
snippet if
	if(${1:1})
		${2}
	end
snippet fig
	 fig = figure('Color',[1 1 1],'visible','${1:on}','Paperunits','centimeters',...
				'Papersize',[30 20],'PaperPosition',[0 0 30 20])
	 ${2}
snippet for
	Ni = size(${1:X},${2:1});
	for i=1:Ni
		${3}
	end	
snippet for2
	Ni = size(${1:X},${2:1});
	Nj = size(${3:X},${4:2});
	for i=1:Ni
	 for j=1:Nj
		${5}
	 end	
	end	
snippet for3
	Ni = size(${1:X},${2:1});
	Nj = size(${3:X},${4:2});
	Nk = size(${5:X},${6:3});
	for i=1:Ni
	 for j=1:Nj
	  for k=1:Nk
		${7}
	  end	
	 end	
	end	
snippet hold
	hold(${1:ax(a)},'on');
	${2}
snippet xl
	xl = ${1:[0 1]};
	xlim(ax(a), xl);
	${2}
snippet yl
	yl = ${1:[0 1]};
	ylim(ax(a), yl);
	${2}
snippet cl
	cl = ${1:[0 1]};
	caxis(ax(a), cl);
	${2}

snippet mesh
	[${1:X,Y}] = meshgrid(${2:x,y});
	${3}
snippet ppdf
	print(gcf,'${1:./pic}.pdf','-dpdf','-painters')
	${2}
snippet ppng
	print(gcf,'${1:./pic}.png','-dpng','-r${2:200}','-painters')
	${3}
snippet plot
	pi = ${1:1}; p(pi) = plot(ax(a), ${2:X}, ${3:Y}, 'color', [col(pi,:) 1], 'Linewidth', 2);
	${4}
snippet pcolor
		pax = ${1:gca};
	pcolor(pax,${2:X},${3:Y},${4:Z})
		shading(pax,'flat');
		%caxis(pax,[${5:0 1}]);
		colorbar('peer',pax);
	${6}			
snippet sigma
	N_l = ${1:20};
	[z_s, Us, F_Us, D, H, eta] = sigma_layer_interp(A.zb,A.Urot,N_l);
snippet timep
	i = 1;
	P{i}.X{1}	= time;    
	P{i}.X{2}	= time;    
	P{i}.Y{1}	= y1;    
	P{i}.Y{2}	= y2;    
	P{i}.LL{1}	= 'u^2';
	P{i}.LL{2}	= 'u^2';
	P{i}.YL		= 'm^2 s^{-2}';
	P{i}.yl		= [];
	tl = [ min([ min(P{i}.X{1}) min(P{i}.X{2})]) max([ max(P{i}.X{1}) max(P{i}.X{2})])];
	Title       = 'title';
								  
	[fig, ax] = time_plot(P, tl, Title, 'on') ;
								  
snippet spec
	figure
		ax_s  = subplot(1,1,1);
		X_s   = ${1:x};			% signal
		fs    = ${2:1};			% smaple freq
		col   = [${3:0 0 0}];	% color of the plot
		nW    = ${4:1};			% number of fft windows

		[f, psd, p1] = plot_spec(ax_s, X_s, fs, col, nW);
			p1.LineWidth = 3;
			ylabel(ax_s, '[m^2s^{-2}]');
	

	
