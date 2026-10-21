.class public Lo0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/a;


# direct methods
.method public constructor <init>(Lo0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/a$a;->a:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lo0/e;->j0:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2
    sput v0, Lo0/e;->j0:I

    if-ne v0, v1, :cond_0

    .line 3
    sput v2, Lo0/e;->I:I

    :cond_0
    return-void
.end method
