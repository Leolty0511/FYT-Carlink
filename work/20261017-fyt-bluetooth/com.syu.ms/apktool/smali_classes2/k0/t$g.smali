.class public Lk0/t$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/t;


# direct methods
.method public constructor <init>(Lk0/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/t$g;->a:Lk0/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 1
    iget-object v2, p0, Lk0/t$g;->a:Lk0/t;

    iget-object v2, v2, Lk0/t;->s:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    move v3, v1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 2
    sget-object v4, Lh0/c;->k:[Ljava/lang/String;

    aget-object v5, v4, v1

    if-eqz v5, :cond_1

    .line 3
    iget-object v3, p0, Lk0/t$g;->a:Lk0/t;

    iget-object v3, v3, Lk0/t;->s:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lh0/c;->k:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "*-*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 4
    sget-object v3, Lh0/c;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    and-int/lit16 v3, v3, 0xff

    .line 5
    :cond_1
    iget-object v4, p0, Lk0/t$g;->a:Lk0/t;

    add-int/lit8 v5, v1, 0x1

    sget-object v6, Lh0/c;->k:[Ljava/lang/String;

    aget-object v1, v6, v1

    invoke-static {v4, v5, v3, v1}, Lk0/t;->g3(Lk0/t;IILjava/lang/String;)V

    move v1, v5

    goto :goto_1

    :cond_2
    return-void
.end method
