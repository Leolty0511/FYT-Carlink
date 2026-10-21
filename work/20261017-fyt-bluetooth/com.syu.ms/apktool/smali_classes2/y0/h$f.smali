.class public Ly0/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Ly0/f;->K0:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Ly0/f;->C0:I

    .line 2
    :goto_0
    sget v1, Ly0/f;->D0:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 3
    sput v1, Ly0/f;->D0:I

    goto :goto_1

    :cond_1
    if-le v1, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 4
    sput v1, Ly0/f;->D0:I

    :cond_2
    :goto_1
    return-void
.end method
