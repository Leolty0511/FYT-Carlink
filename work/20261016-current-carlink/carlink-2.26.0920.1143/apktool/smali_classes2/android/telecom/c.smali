.class public final synthetic Landroid/telecom/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Landroid/telecom/Connection;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/Connection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/c;->b:Landroid/telecom/Connection;

    iput p2, p0, Landroid/telecom/c;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/c;->b:Landroid/telecom/Connection;

    iget v1, p0, Landroid/telecom/c;->c:I

    check-cast p1, Landroid/telecom/Connection$Listener;

    invoke-static {v0, v1, p1}, Landroid/telecom/Connection;->c(Landroid/telecom/Connection;ILandroid/telecom/Connection$Listener;)V

    return-void
.end method
