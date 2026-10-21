.class public interface abstract Landroid/view/IInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IInputFilter$Stub;
    }
.end annotation


# virtual methods
.method public abstract filterInputEvent(Landroid/view/InputEvent;I)V
.end method

.method public abstract install(Landroid/view/IInputFilterHost;)V
.end method

.method public abstract uninstall()V
.end method
