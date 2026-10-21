.class public final synthetic Landroid/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnMarshaledListener;


# instance fields
.field public final synthetic a:Landroid/app/Notification;

.field public final synthetic b:Landroid/os/Parcel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Notification;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/l;->a:Landroid/app/Notification;

    iput-object p2, p0, Landroid/app/l;->b:Landroid/os/Parcel;

    return-void
.end method


# virtual methods
.method public final onMarshaled(Landroid/app/PendingIntent;Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/l;->a:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/l;->b:Landroid/os/Parcel;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/Notification;->a(Landroid/app/Notification;Landroid/os/Parcel;Landroid/app/PendingIntent;Landroid/os/Parcel;I)V

    return-void
.end method
