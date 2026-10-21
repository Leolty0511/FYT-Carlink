.class public Lk0/ii$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ii;


# direct methods
.method public constructor <init>(Lk0/ii;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ii$b;->a:Lk0/ii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 2
    div-int/lit16 v1, v0, 0xe10

    .line 3
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 4
    rem-int/lit8 v0, v0, 0x3c

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x79

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    aput v5, v3, v4

    aput v1, v3, v5

    const/4 v1, 0x4

    aput v2, v3, v1

    const/4 v1, 0x5

    aput v0, v3, v1

    .line 5
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
