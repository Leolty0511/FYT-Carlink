.class public Lo0/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/b$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo0/b$b;


# direct methods
.method public constructor <init>(Lo0/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/b$b$a;->a:Lo0/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lo0/b$b$a;->a:Lo0/b$b;

    iget-object v0, v0, Lo0/b$b;->a:Lo0/b;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lo0/b;->F(Lo0/b;I)V

    :cond_0
    return-void
.end method
