.class public Ly0/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly0/c$b;


# direct methods
.method public constructor <init>(Ly0/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/c$b$a;->a:Ly0/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lo1/q0;->y(I)V

    .line 2
    invoke-static {}, Ly0/h;->M()V

    return-void
.end method
