.class public Lo0/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/a$b;


# direct methods
.method public constructor <init>(Lo0/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/a$b$a;->a:Lo0/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1
    sget v1, Lo0/e;->I:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x14

    invoke-static {v1, v0}, Lo0/g;->T(I[I)V

    return-void
.end method
