.class public Lo0/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/b;


# direct methods
.method public constructor <init>(Lo0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/b$d;->a:Lo0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lo0/e;->g0:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput v1, Lo0/e;->f0:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lo0/e;->f0:I

    const/16 v2, 0xb4

    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    sput v0, Lo0/e;->f0:I

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {}, Lo1/q0;->C()V

    .line 6
    sput v1, Lo0/e;->f0:I

    :cond_1
    :goto_0
    return-void
.end method
