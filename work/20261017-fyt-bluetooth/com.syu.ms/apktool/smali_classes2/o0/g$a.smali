.class public Lo0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/g;
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
    sget v0, Lo0/e;->K:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lo0/e;->K:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lo0/g;->S(I)V

    .line 3
    invoke-static {p0}, Lo0/g;->L(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
