.class public Lk0/ym$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ym;


# direct methods
.method public constructor <init>(Lk0/ym;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ym$a;->a:Lk0/ym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lu0/b;->i3:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Unkown"

    .line 2
    sput-object v0, Lu0/b;->i3:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lu0/b;->i3:Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 4
    array-length v1, v0

    const/16 v2, 0x25

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    :goto_0
    add-int/lit8 v1, v2, 0x6

    .line 5
    new-array v1, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    .line 6
    aput v3, v1, v4

    const/16 v3, 0x70

    const/4 v5, 0x1

    .line 7
    aput v3, v1, v5

    add-int/lit8 v3, v2, 0x3

    const/4 v6, 0x2

    .line 8
    aput v3, v1, v6

    const/16 v3, 0x8

    const/4 v7, 0x3

    .line 9
    aput v3, v1, v7

    const/4 v3, 0x4

    .line 10
    aput v6, v1, v3

    const/4 v3, 0x5

    .line 11
    aput v5, v1, v3

    :goto_1
    if-ge v4, v2, :cond_2

    add-int/lit8 v3, v4, 0x6

    .line 12
    aget-byte v5, v0, v4

    aput v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
