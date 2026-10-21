.class public Lk0/xl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xl;


# direct methods
.method public constructor <init>(Lk0/xl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xl$a;->a:Lk0/xl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, -0x1d

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x72

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    .line 1
    sget v1, Lh0/c;->P:I

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit8 v1, v1, 0x3c

    shr-int/lit8 v2, v1, 0x8

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/4 v4, 0x3

    aput v2, v0, v4

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v3

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
