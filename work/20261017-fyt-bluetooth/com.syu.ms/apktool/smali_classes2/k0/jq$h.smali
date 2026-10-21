.class public Lk0/jq$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jq;


# direct methods
.method public constructor <init>(Lk0/jq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jq$h;->a:Lk0/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x64

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 1
    sget v1, Lh0/c;->P:I

    div-int/lit16 v1, v1, 0x3e8

    .line 2
    div-int/lit16 v3, v1, 0xe10

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v2

    .line 3
    rem-int/lit16 v2, v1, 0xe10

    div-int/lit8 v2, v2, 0x3c

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 4
    rem-int/lit8 v1, v1, 0x3c

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 5
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
