## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------


## ----eval=F-------------------------------------------------------------------
#  get.df <- function(n0=.1, a0=.25, b0=1){
#    my.df <- expand.grid(tau=seq(0.1,1,.01), mu=seq(-15,15,.01))
#    my.df$dens <- dnorgam(mu=my.df$mu, tau=my.df$tau, mu0=0, n0=n0, a0=a0, b0=1)
#    my.df$color <- as.numeric(cut((my.df$dens),50))
#    my.df$n0=n0
#    my.df$a0=a0
#    my.df$b0=b0
#    return(my.df)
#  }
#  
#  get.df1 <- get.df(n0=.1, a0=.25, b0=1)
#  get.df2 <- get.df(n0=.1, a0=.25*.25, b0=1*.25)
#  get.df3 <- get.df(n0=.1, a0=.25*4, b0=1*4)
#  get.df4 <- get.df(n0=1, a0=.25, b0=1)
#  get.df5 <- get.df(n0=1, a0=.25*.25, b0=1*.25)
#  get.df6 <- get.df(n0=1, a0=.25*4, b0=1*4)
#  get.df7 <- get.df(n0=10, a0=.25, b0=1)
#  get.df8 <- get.df(n0=10, a0=.25*.25, b0=1*.25)
#  get.df9 <- get.df(n0=10, a0=.25*4, b0=1*4)
#  my.df <- rbind(get.df1, get.df2, get.df3, get.df4, get.df5, get.df6, get.df7, get.df8, get.df9)

## ---- eval =F, fig.cap="Normal Gamma Density Plots"---------------------------
#  ggplot(data= my.df, aes(x=mu, y=tau, fill=color))+
#    geom_tile() +
#    facet_grid(a0+b0~n0)+
#    scale_x_continuous(expand=c(0,0))+
#    scale_y_continuous(expand=c(0,0))+
#    labs(x=TeX("$\\mu$"),
#         y=TeX("$\\tau$"),
#         title="Normal-gamma density plots",
#         subtitle="Column headers hold effective sample size. Row headers hold precision hyperparameters.")+
#    guides(fill=F)

## ---- eval=F, fig.cap="Location-scale t-distributions"------------------------
#  ggplot(data=rbind(
#   gcurve(expr = dt_ls(x,df=10, mu=0, sigma=1), from=-10,to=10,
#          n=1001, category = "df=10, mu=0, sigma=1"),
#   gcurve(expr = dt_ls(x, df=10, mu=0, sigma=2), from = -10, to=10,
#          n=1001, category = "df=10, mu=3, sigma=2"),
#   gcurve(expr = dt_ls(x, df=10, mu=1, sigma=1), from = -10, to=10,
#          n=1001, category = "df=10, mu=3, sigma=1"),
#   gcurve(expr = dt_ls(x, df=10, mu=2, sigma=.5), from = -10, to=10,
#          n=1001, category = "df=10, mu=3, sigma=0.5")),
#   aes(x=x,y=y,color=category)) +
#   geom_line(size=.75) +
#   theme(legend.position = "bottom") +
#   labs(title="Location-scale t-distributions",color=NULL)

