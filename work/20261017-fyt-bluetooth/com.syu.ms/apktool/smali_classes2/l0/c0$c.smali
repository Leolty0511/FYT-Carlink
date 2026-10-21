.class public Ll0/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/c0;
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
    .locals 1

    .line 1
    sget v0, Ll0/c0;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ll0/c0;->k:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lu0/d;->C2(I)V

    .line 3
    sget-object v0, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
