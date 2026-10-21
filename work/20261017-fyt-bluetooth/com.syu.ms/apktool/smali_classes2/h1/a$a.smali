.class public Lh1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh1/a;


# direct methods
.method public constructor <init>(Lh1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh1/a$a;->a:Lh1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "com.syu.carlink"

    .line 2
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "0"

    const/4 v2, 0x0

    const-string v3, "sys.carlink.type"

    if-eqz v0, :cond_2

    .line 3
    :try_start_1
    invoke-static {v3, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 4
    :cond_1
    invoke-static {v3, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.syu.hicar"

    .line 5
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {v3, v2}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 7
    invoke-static {v3, v1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.syu.cast"

    .line 8
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1, v2}, Lu0/i;->i4(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method
