.class public final Ll/d;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lz/p;

.field public final synthetic b:Ll/e;


# direct methods
.method public constructor <init>(Lz/p;Ll/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/d;->a:Lz/p;

    .line 2
    .line 3
    iput-object p2, p0, Ll/d;->b:Ll/e;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HDL"

    .line 5
    .line 6
    const-string v1, "=============>>> onTetheringFailed"

    .line 7
    .line 8
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ll/d;->a:Lz/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v0, v1, v2}, Lz/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onTetheringStarted()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 2
    .line 3
    .line 4
    const-string v0, "HDL"

    .line 5
    .line 6
    const-string v1, "=============>>> onTetheringStarted"

    .line 7
    .line 8
    invoke-static {v0, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ll/d;->a:Lz/p;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v2, p0, Ll/d;->b:Ll/e;

    .line 18
    .line 19
    iget-object v2, v2, Ll/e;->c:Landroid/net/wifi/WifiConfiguration;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Lz/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
