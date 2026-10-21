.class public Lb/c$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/c$b$a;


# direct methods
.method public constructor <init>(Lb/c$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c$b$a$a;->a:Lb/c$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/c$b$a$a;->a:Lb/c$b$a;

    iget-object v0, v0, Lb/c$b$a;->b:Lb/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/c$b;->d(Z)V

    return-void
.end method
