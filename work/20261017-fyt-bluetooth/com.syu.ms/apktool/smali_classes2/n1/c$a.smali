.class public Ln1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/c;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/c$a;->a:Ln1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/c$a;->a:Ln1/c;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
