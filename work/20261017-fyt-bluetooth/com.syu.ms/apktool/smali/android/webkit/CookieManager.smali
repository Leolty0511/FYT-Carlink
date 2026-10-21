.class public Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowFileSchemeCookies()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->allowFileSchemeCookiesImpl()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .locals 2

    const-class v0, Landroid/webkit/CookieManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/WebViewFactoryProvider;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookiesImpl(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public allowFileSchemeCookiesImpl()Z
    .locals 1

    .line 1
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flushCookieStore()V
    .locals 1

    .line 1
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 3
    :try_start_0
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 2
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeAllCookie()V
    .locals 1

    .line 1
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public removeExpiredCookie()V
    .locals 1

    .line 1
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public removeSessionCookie()V
    .locals 1

    .line 1
    new-instance v0, Landroid/webkit/MustOverrideException;

    invoke-direct {v0}, Landroid/webkit/MustOverrideException;-><init>()V

    throw v0
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAcceptFileSchemeCookiesImpl(Z)V
    .locals 0

    .line 1
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/webkit/MustOverrideException;

    invoke-direct {p1}, Landroid/webkit/MustOverrideException;-><init>()V

    throw p1
.end method
