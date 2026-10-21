.class public Lk0/q$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/q;


# direct methods
.method public constructor <init>(Lk0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/q$f;->a:Lk0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    invoke-static {v0}, Lk0/q;->s3(Lk0/q;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    sget-object v1, Lh0/c;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/q;->t3(Lk0/q;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    invoke-static {v0}, Lk0/q;->s3(Lk0/q;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/q;->t3(Lk0/q;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    invoke-static {v0}, Lk0/q;->s3(Lk0/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lk0/q;->u3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/q;->t3(Lk0/q;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lk0/q$f;->a:Lk0/q;

    invoke-static {v0}, Lk0/q;->s3(Lk0/q;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    array-length v1, v0

    const/16 v2, 0x18

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    const/16 v1, 0x1c

    new-array v1, v1, [I

    const/16 v3, -0x1d

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x19

    const/4 v5, 0x1

    aput v3, v1, v5

    const/4 v3, 0x2

    const/16 v5, -0x6b

    aput v5, v1, v3

    const/4 v3, 0x4

    :goto_1
    if-ge v4, v2, :cond_2

    add-int v5, v3, v4

    .line 8
    aget-byte v6, v0, v4

    aput v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
