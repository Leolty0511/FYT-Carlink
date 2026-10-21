.class public Lk0/cp$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cp;


# direct methods
.method public constructor <init>(Lk0/cp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cp$f;->a:Lk0/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7a

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v2, Lu0/b;->r3:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    aput v3, v0, v1

    const/4 v1, 0x4

    rem-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
