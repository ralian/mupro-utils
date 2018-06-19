      program WriteBCEulerAngles

      implicit none
      integer,parameter:: nx=60,ny=60,nz=60
      real*8,parameter::  pi=dacos(-1.d0)
      real*8,parameter::  phi(nx,ny,nz)=0.d0,theta(nx,ny,nz)=15.d0,psi(nx,ny,nz)=0.d0
      integer i,j,k

      open(unit=2,file='eulerAng.in')

      write(2,100),nx,ny,nz

      do i=1,nx
      do j=1,ny
      do k=1,nz
        if (j < 30) then
          write(2,100),i,j,k,phi(i,j,k),theta(i,j,k),psi(i,j,k)
        else
          write(2,100),i,j,k,phi(i,j,k),-theta(i,j,k),psi(i,j,k)
        end if
      enddo
      enddo
      enddo

      close(2)

 100  format(3(i6),12(f11.5))

        stop
       end
